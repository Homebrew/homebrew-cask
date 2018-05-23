cask 'jalbum' do
  version '15.4'
  sha256 'dac802092a66037f4208e5648d06295dd828fe48adb4b3d91084f5f54f5f05ce'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
