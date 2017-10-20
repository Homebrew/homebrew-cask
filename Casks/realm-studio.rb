cask 'realm-studio' do
  version '1.0.1'
  sha256 '5bb479e933308774d68ad7ecc451f9ddd1a1fa4c45fb5423ee5f3ad7236938ba'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: 'd4ec34309d9e3bc7a04ea21a2faec2abbf679484937d737abf51c84ffaa9da88'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
