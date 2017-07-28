cask 'cocoarestclient' do
  version '1.4.1'
  sha256 '6dd1268e1c23efc6938d5615a691255c356d317918e89346e86caefec8d599bf'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'cc817d71b7655093bc5bdf82b21c684875b4d789f725d012c6a325bf0dfe0f2d'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
