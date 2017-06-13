cask 'gridwars' do
  version '9.3.2006'
  sha256 '39694d6d7f7af1a25818d10dbd811d0309562622f91f43f71d8b217bccdb03fb'

  url 'http://gridwars.marune.de/bin/gridwars_osx_x86.zip'
  appcast 'http://gridwars.marune.de/',
          checkpoint: '89626bba6f9a60543a764da0cfe6d2a18bccaf8f6b229a19645f80389f0182bc'
  name 'GridWars'
  homepage 'http://gridwars.marune.de/'

  suite 'gridwars_osx_x86'
end
