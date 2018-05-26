cask 'realm-studio' do
  version '1.21.0'
  sha256 'a14489dcaa5dd7b53480251c8b26e4677f0c5503dd7ab5820ac2b2aebba2a327'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: '5d3283239bc50410a0c473d788bd5945a07f4b34243dfe5e962eae83dbd596c9'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
