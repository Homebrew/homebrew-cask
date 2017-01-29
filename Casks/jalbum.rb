cask 'jalbum' do
  version '13'
  sha256 '1b6466ad6b2272addeaa23b70ac3714b4df3357d0c168ea58ff6060c8cf33e4c'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
