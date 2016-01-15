cask 'postman' do
  version '3.2.9.1'
  sha256 '1e62914e81fdb9ea5e00520777cee48570182a77a6771be5f63ca1681454cac4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
