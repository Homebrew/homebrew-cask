cask 'realm-studio' do
  version '2.4.0'
  sha256 'dd51125810ad227e5c5752e341b5174dda053fb8db68d30e3083c629b45af41d'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
