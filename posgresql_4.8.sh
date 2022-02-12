#!/usr/bin/env bash
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc//apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -yq postgresql-8.4
