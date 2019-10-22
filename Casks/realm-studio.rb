cask 'realm-studio' do
  version '3.8.1'
  sha256 'de7f1939f9e7f6c41977051f9ef27b623624fccda422156c789339d675eba1d5'

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
