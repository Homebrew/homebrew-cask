cask 'postman' do
  version '3.2.16.1'
  sha256 '7d88d8d4854296d7024718ede9db8ec62010ccd04a8ba9759c6d6a4d32c9bab0'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
