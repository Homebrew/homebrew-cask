cask 'realm-studio' do
  version '2.5.0'
  sha256 'd80b407b42ae7b9a296a7eb72f6fa51c33da1047a4de74a2b55b504c559ebf3f'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
