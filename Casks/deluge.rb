cask 'deluge' do
  version '1.3.15'
  sha256 '308643abb49f6a5e93a200ace62ab316171064c8b3a3106e4308523217ae557c'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-macosx-x64.dmg"
  name 'Deluge'
  homepage 'http://deluge-torrent.org/'

  app 'Deluge.app'
end
