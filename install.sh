#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get install xinit
sudo apt-get install x11-xserver-utils

# .Xresources
mv -v ~/.xinitrc ~/.xinitrc.old 2> /dev/null
ln -sf $BASE/xinitrc  ~/.xinitrc

# .Xresources
mv -v ~/.Xresources ~/.Xresources.old 2> /dev/null
ln -sf $BASE/Xresources ~/.Xresources
sudo apt-get install fonts-inconsolata

# git-config
sudo apt-get install git
git config --global user.email "gayan@linuxdeveloper.space"
git config --global user.name "Gayan Weerakutti"
git config --global core.editor "vim"

# Signing commits using GPG
git config --global user.signingkey 626BE6CD
# To set all commits to be signed by defaul
git config --global commit.gpgsign true
