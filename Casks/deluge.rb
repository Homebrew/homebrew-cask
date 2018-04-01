cask 'deluge' do
  version '1.3.15.1'
  sha256 'a78a477f0a492c96cfa3e68a6551c36c6b451fc91b19df433027ef189f757baa'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-macosx-x64.dmg"
  name 'Deluge'
  homepage 'http://deluge-torrent.org/'

  app 'Deluge.app'
end
