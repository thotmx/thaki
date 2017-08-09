#!/usr/bin/env bash

shopt -s extglob
set -o errtrace
set -o errexit


function ubermix_install_software {
  software=( $(curl -sSL https://raw.githubusercontent.com/thotmx/thaki/master/packages) )

  for package in ${software[*]}
  do
    sudo apt-get -y install $package
  done
}

ubermix_install_software
