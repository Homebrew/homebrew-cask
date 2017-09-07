cask 'cocoarestclient' do
  version '1.4.2'
  sha256 '64eb89271e1ed168683c2156e6576ffa287296a506357d11da4f01b380934fb2'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: '15f6d00eddb02bc79892e605f1a2824314364377b97f4730cbfaaa49bff054ec'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
