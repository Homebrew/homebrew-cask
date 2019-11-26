cask 'realm-studio' do
  version '3.8.3'
  sha256 'e07f5b699b0a698a79afc3185a553ca1e81c3d696503c1889778a212015e69f2'

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
