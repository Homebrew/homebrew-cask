cask 'deluge' do
  version '1.3.14'
  sha256 'e431358d127ec5b3d70aeff3795e3a370b2e51fbf153a2be175a6d553855325f'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-macosx-x64.dmg"
  name 'Deluge'
  homepage 'http://deluge-torrent.org/'

  app 'Deluge.app'
end
