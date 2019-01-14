cask 'realm-studio' do
  version '3.3.0'
  sha256 'dfd1b6149fe11b9897ad3fcfdaf9c42b890d7f39bf0998fce283474578154a39'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
