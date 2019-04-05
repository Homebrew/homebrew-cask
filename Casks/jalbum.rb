cask 'jalbum' do
  version '18.1.2'
  sha256 '2de2dc3ddec9599e081bba9fe3555306168dded4da6aa42ad16bb9c9e6ea29a9'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
