cask 'realm-studio' do
  version '3.5.0'
  sha256 'ff50a17b8e2349677e67d1200d47c2b37857dddb2aafe6109f714a421e494921'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
