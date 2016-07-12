cask 'postman' do
  version '4.4.2'
  sha256 '4abe58b5cc9ba6ebfd52e91df999f6927220cc14e371d3c92f2075d7f3e0a378'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '7025f8977f786ca144202fd74e1425603a36e31723f564ffb69c42a8f318cd5b'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
