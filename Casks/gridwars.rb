cask :v1 => 'gridwars' do
  version '9.3.2006'
  sha256 '39694d6d7f7af1a25818d10dbd811d0309562622f91f43f71d8b217bccdb03fb'

  url 'http://gridwars.marune.de/bin/gridwars_osx_x86.zip'
  name 'GridWars'
  homepage 'http://gridwars.marune.de/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'gridwars_osx_x86/gridwars.app'
end
