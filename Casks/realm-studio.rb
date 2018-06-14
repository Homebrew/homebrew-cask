cask 'realm-studio' do
  version '2.2.0'
  sha256 '589895a0c41ece6cfa676a918ae9a1c63f606b6973cfc5d814e2781838bd69d2'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
