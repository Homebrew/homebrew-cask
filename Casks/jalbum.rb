cask 'jalbum' do
  version '15.3.4'
  sha256 'd7d111906eef13a7aa3781292cc5aa90ff24c7ee5bfbbd5dd192839b6b62bc02'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
