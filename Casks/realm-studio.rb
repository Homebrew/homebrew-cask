cask 'realm-studio' do
  version '2.6.2'
  sha256 '74429f1f29b49693eebff9b0cd0f458eec5ce6130292af5e7a3cc456a1d52ffd'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
