cask 'realm-studio' do
  version '2.1.1'
  sha256 'd7e67a5ba5af7597ea4c3a8eb1a69f51705cf038e486fecfc605ced20e8f6c68'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
