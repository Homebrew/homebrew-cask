cask :v1 => 'deluge' do
  version '1.3.10'
  sha256 '4399467735fb6339a8f2f75887179dd673b52a032cc784ab976966dead361d6d'

  url "http://download.deluge-torrent.org/mac_osx/deluge-#{version}-osx-x86.tbz2"
  homepage 'http://deluge-torrent.org/'
  license :gpl

  app 'Deluge.app'
end
