cask 'jalbum' do
  version '18.3.0'
  sha256 '1b872799875ec0e1abc619733c2d056bebedef0dc14c395c6aa4d9726c269acc'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
