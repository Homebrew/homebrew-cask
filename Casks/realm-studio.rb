cask 'realm-studio' do
  version '1.6.1'
  sha256 '125f2885e061c535959fda873793c51f103cfcdd42d2e31690856bcd7cc1b92a'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: 'd0fc66ed08901414158ea9358001bde0acd6acb721e29057781417097893a2bd'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
