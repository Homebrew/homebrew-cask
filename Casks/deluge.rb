cask 'deluge' do
  version '1.3.12'
  sha256 'e8fd74918ada2ebc6994e9c0f52efbabe509147f0ede63ab6954f4811de8afdb'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-osx-x64-inst.dmg"
  name 'Deluge'
  homepage 'http://deluge-torrent.org/'
  license :gpl

  app 'Deluge.app'
end
