cask 'postman' do
  version '3.2.10.1'
  sha256 'b6ab622c6e54f87c3d1222b28fd2dbc1f39cbd4add65638aef1f34cc29991e64'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
