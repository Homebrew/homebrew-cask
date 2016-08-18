cask 'postman' do
  version '4.6.1'
  sha256 '4c8def74ec01557d57c052cf4473342de0f93591cb59c93bed874a344e756b1b'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'd081bd038becdb1a5adc1877ecd9d9f524142dbdf1a65d57a530134f711b65d7'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
