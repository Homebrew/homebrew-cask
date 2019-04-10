cask 'jalbum' do
  version '18.1.3'
  sha256 '70bd744d32554f54b4d0a341c008faf3abc1ff79fa3b4cf6e0e8a8dfc6930f3c'

  url "https://download.jalbum.net/download/#{version.major_minor}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
