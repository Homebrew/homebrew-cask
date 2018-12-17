cask 'realm-studio' do
  version '3.1.3'
  sha256 '9ee88b4e27d0f23604a21dbb384809c5adb57d4cba5e0117e625142b802e2b0a'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
