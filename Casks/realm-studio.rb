cask 'realm-studio' do
  version '2.3.1'
  sha256 '3d834b540357860ab8307eaefc3e23ef3a9d18ead7c53109eb5c4da0c71f7c7b'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
