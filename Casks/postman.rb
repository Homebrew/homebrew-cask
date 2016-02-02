cask 'postman' do
  version '3.2.14.1'
  sha256 '2d466c1e777caa30808a69ae6f144f483b7280cae2e3dfffac6573627ea6bec9'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
