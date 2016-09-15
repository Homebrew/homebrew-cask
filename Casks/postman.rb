cask 'postman' do
  version '4.7.1'
  sha256 '5600f4c2fa39c7b9234ef603c5d5dbc6c9cb0b3cbc3cde5d20d168de944c2dbf'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '2d5290ad8a48e490fb6f5b7554ee59fbf8f6e5cd34456f3a38e210c5ade2e38a'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'

  zap delete: [
                '~/Library/Application Support/Postman',
                '~/Library/Application Support/com.postmanlabs.mac.ShipIt',
                '~/Library/Caches/Postman',
                '~/Library/Caches/com.postmanlabs.mac',
                '~/Library/Preferences/com.postmanlabs.mac.plist',
                '~/Library/Saved Application State/com.postmanlabs.mac.savedState',
              ]
end
