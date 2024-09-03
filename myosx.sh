#!/bin/bash

# OSX Development Setup
# This is how I setup an OSX machine for development.

# Homebrew Installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install necessary packages via Homebrew
brew install git
brew install fish
brew install macvim
brew install vifm
brew install gnu-sed
brew install gnupg
brew install yarn 
brew install fzf
brew install fd
brew install diff-so-fancy
brew install visual-studio-code
brew install --cask caffeine

# Volta.sh Installation
curl https://get.volta.sh | bash
source ~/.config/fish/config.fish
volta install node
volta install yarn

# Change the default shell to Fish
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

# Install Fisher (Fish package manager)
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install Oh My Fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install Bobthefish theme for Fish
omf install bobthefish

# Install fzf for Fish
fisher install PatrickF1/fzf.fish

# Install Source Code Pro font for Powerline
brew tap homebrew/cask-fonts
brew install font-source-code-pro-for-powerline

# Install QuickLook plugins
brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo

# Generate SSH key and copy it to clipboard
ssh-keygen -t rsa -b 4096 -C "me@azimi.me"
cat ~/.ssh/id_rsa.pub | pbcopy

# Update to proper Vim with Janus
curl -L https://bit.ly/janus-bootstrap | bash

# Git configurations
git config --global diff.colorMoved zebra
git config --global diff.noprefix true
git config --global --add remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pr/*"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Git aliases
git config --global alias.l "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Install fzf.fish
# (Note: Already installed earlier, mentioned again as reference)
# https://github.com/PatrickF1/fzf.fish

# Use gitstatus
# (Add this as a reminder or separate command if needed)
# https://github.com/romkatv/gitstatus

