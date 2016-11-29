cask 'deluge' do
  version '1.3.13'
  sha256 '944b2e84ad38f5f31997cdb3b30d67ec7b77628c8fc6feb9acb365d2bc4775ff'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-osx-x64-0.dmg"
  name 'Deluge'
  homepage 'http://deluge-torrent.org/'

  app 'Deluge.app'
end
