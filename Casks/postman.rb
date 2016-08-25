cask 'postman' do
  version '4.6.2'
  sha256 '0cc223fa88c6fe2d3363e9c299814ad4270ed95ef617245a6322d1256295ff13'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '596b2fad129645ad20eb02877c12ddf20d746e6546ca13eacfaf9f519791f69f'
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
