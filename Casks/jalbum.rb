cask 'jalbum' do
  version '17.1.5'
  sha256 'f14d519af2d1d0a1e9b1b473dc7c8a455866c0a5de058853677dd20ca568952b'

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
