cask 'realm-studio' do
  version '2.9.0'
  sha256 '8cea28deec8d593d124d557a6363727b71f0ce0b2944271f33638d5f984a6feb'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
