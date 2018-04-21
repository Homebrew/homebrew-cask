cask 'cocoarestclient' do
  version '1.4.4'
  sha256 '2fd363e41a5b38505c98bd5c6be1bb7a1cc2dc382009f775a151c56a10e674fe'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'b7f2b3c50e647e5d3c126fb4dc1e4092a70bdf95fc413b1b98190bfb8b6a2f5c'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
