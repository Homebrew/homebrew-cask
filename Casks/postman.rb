cask 'postman' do
  version '4.9.3'
  sha256 '51ef82eaa41928dbcfb7d4036600601bebe5e75f15d449035efa0eb195a927ea'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'c041d1905eaa40104be76e0b21d799d089a5c12a5154a7240ca77b1b467eb931'
  name 'Postman'
  homepage 'https://www.getpostman.com/'

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
