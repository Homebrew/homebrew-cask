cask 'realm-studio' do
  version '3.0.7'
  sha256 '7a113b9b59412044dbcfc0a0df6abbb177801846257b420ff7dcdab372115993'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
