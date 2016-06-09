cask 'postman' do
  version '4.2.2'
  sha256 'b76ce5673980c747f2bf7bd2cb62d40dd31b09a9eb6c3b2479e3f597e24cc38d'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'a312488dc3f9730394c518527f622f93c652a9fb58dc48bdea2cce56993a4757'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
