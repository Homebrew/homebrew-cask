cask 'realm-studio' do
  version '3.10.0'
  sha256 'd22bdd203bab653fe4a87e1ced7c54d150e6a44e79bdf050b12dcd8ccc2ba45d'

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
