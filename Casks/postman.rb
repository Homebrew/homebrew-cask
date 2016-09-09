cask 'postman' do
  version '4.7.0'
  sha256 '0afa4040a77468d75103cb5ede4d15384985912ec6cea7242c568ae3cfe656b7'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '2782aa419bfe279d11f6f9f083d7fc8cbcec2c1223cc6e76d73dc9b5b0b962d2'
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
