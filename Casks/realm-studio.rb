cask 'realm-studio' do
  version '1.20.0'
  sha256 '00bb92950a6a8d7cc163e1867612d4fd8927c6b4f634544394ee5a835a5ee34d'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: '0cc43e29afc58da2c15880e08f68e89c7c628b3f1b15315d3342e2f56eaba709'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
