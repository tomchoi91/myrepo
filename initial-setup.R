rm(list=ls())
# user_name <- readline(prompt = "Your full name: Tom Choi")
# user_email <- readline(prompt = "The address associated w your github account: https://github.com/tomchoi91")
user_name <- "Tom Choi"
user_email <- "https://github.com/tomchoi91"

if (!"usethis" %in% installed.packages()) install.packages("usethis")

library(usethis)

use_git_config(user.name = user_name, user.email = user_email, scope = "user")
# ?use_git_config

# Tell git to ignore all files that are OS-dependent and don't have useful data.
git_vaccinate()

# Create a ssh key if one doesn't already exist
if (!file.exists(git2r::ssh_path("id_rsa.pub"))) {
  system("ssh-keygen -t rsa -b 4096") # Create an ssh key
  system("eval $(ssh-agent -s)")
  system("ssh-add ~/.ssh/id_rsa")
}


# Chapter 10 Cache credentials for HTTPS
install.packages("gitcreds")
library(gitcreds)
gitcreds_set()
gitcreds_get()

# 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
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
# Error in throw(new_error("gitcreds_nogit_error")) :
#   Could not find system git
# do chapter 12.3 first!


