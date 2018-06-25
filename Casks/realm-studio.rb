cask 'realm-studio' do
  version '2.3.2'
  sha256 '04f1a9ffd987c151b9e6f0267ed18aaee4858af731c8635321f478e8078d6f47'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
