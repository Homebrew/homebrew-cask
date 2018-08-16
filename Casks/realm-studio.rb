cask 'realm-studio' do
  version '2.6.0'
  sha256 '7faa69a3af8490317ad3a4af2e8185f90eccb6bd212bcd7cd175110f872b0e75'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
