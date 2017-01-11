cask 'gridwars' do
  version '9.3.2006'
  sha256 '39694d6d7f7af1a25818d10dbd811d0309562622f91f43f71d8b217bccdb03fb'

  url 'http://gridwars.marune.de/bin/gridwars_osx_x86.zip'
  appcast 'http://gridwars.marune.de/',
          checkpoint: '8cf5148b46ca27f4e6073b041b08040e3365b0a195cbc6dec98b1e2c02db4dfc'
  name 'GridWars'
  homepage 'http://gridwars.marune.de/'

  suite 'gridwars_osx_x86'
end
