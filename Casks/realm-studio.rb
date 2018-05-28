cask 'realm-studio' do
  version '1.21.1'
  sha256 'f9ee8191d58095e1a56f1d815b1abbf0b57868aa3cd71b036790aa44ea4ed6fa'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: 'ada7f7c1b7e73e6295d5f9172224908c9909eb2b30a8d7d10656b4d3cf9fc9e6'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
