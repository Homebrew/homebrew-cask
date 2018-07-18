cask 'realm-studio' do
  version '2.4.1'
  sha256 'a868483812e70960517b276939368a8a696687908d74f73d58353a26a837d8d9'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
