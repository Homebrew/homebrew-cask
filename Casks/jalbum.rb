cask 'jalbum' do
  version '15.3'
  sha256 '9104715d8633a68b59be873a33dd8922500c10a170259594371e538a31b02aed'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
