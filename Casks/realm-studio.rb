cask 'realm-studio' do
  version '2.7.0'
  sha256 '6d8eddca67a9b76c62cd16ec0d9c4a6b5554f1fb5777a8c2337e26a093a7192c'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
