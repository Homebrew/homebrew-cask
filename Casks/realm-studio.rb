cask 'realm-studio' do
  version '2.3.3'
  sha256 '84f5ba40c19f9845304127ea91d5bfcebd54643c70249e598533c12d2d437767'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
