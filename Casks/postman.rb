cask 'postman' do
  version '4.5.0'
  sha256 '3d8da3b9d404621804ec7b93ec46f6c4fb0c0ff6a437fa2240321bd8dcd879e3'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '4354150bc53f9350b1d7bf44fde1dbe783e04faf49a71d2279eceff6dd0cdba1'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
