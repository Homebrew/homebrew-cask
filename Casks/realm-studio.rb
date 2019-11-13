cask 'realm-studio' do
  version '3.8.2'
  sha256 'd7ab2ef7f2f60b034d8a9e29b6dc0dbe296bc9ffa3b2f1024ebd6970d2b79978'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
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
