cask 'realm-studio' do
  version '1.3.0'
  sha256 '1093d9b5ea97e9a3c889296ad9f16c7ff9b461d51005c30539f7a0376aa803e5'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: '58ca15dea159749e4a48fbd85e8ad71845fbfd4643e1637c92a47bc406472882'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
