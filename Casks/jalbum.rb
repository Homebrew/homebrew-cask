cask 'jalbum' do
  version '18.1'
  sha256 '0734fe553566abab4dd9c2b79a75f9c53830b5dcafb60dcc8635a6def11de9ae'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
