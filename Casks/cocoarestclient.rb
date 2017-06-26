cask 'cocoarestclient' do
  version '1.4.1'
  sha256 '6dd1268e1c23efc6938d5615a691255c356d317918e89346e86caefec8d599bf'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: '10c6f9905497ea558e43425388e947af9c1a8ade867a311b503b1e69a69f2511'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
