cask 'jalbum' do
  version '18.0.1'
  sha256 '957d21a19c180f2d10e4b1845c59a4e90d9027894c9ffbc418dfb3867a531126'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/download/previous'
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
