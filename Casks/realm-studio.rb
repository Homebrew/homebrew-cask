cask 'realm-studio' do
  version '2.6.1'
  sha256 'df7900fd19a17030048f5a04b62a096876ab0954f6b96b53592f624ea9d3bede'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
