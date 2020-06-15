cask 'realm-studio' do
  version '3.11.0'
  sha256 'cb849642b1da4a690bd2c50d2be2bf67abc5e343f2792f31bbd3807dfd5580d7'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://github.com/realm/realm-studio/releases.atom'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  auto_updates true

  app 'Realm Studio.app'

  zap delete: [
                '~/Library/Application Support/Realm Studio',
                '~/Library/Caches/io.realm.realm-studio',
                '~/Library/Caches/io.realm.realm-studio.ShipIt',
                '~/Library/Logs/Realm Studio',
                '~/Library/Preferences/io.realm.realm-studio.helper.plist',
                '~/Library/Preferences/io.realm.realm-studio.plist',
                '~/Library/Saved Application State/io.realm.realm-studio.savedState',
              ]
end
