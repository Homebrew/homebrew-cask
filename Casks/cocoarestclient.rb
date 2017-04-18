cask 'cocoarestclient' do
  version '1.3.16'
  sha256 '330d075ef8e7937aff4f583fc47c4f5dd094b07360946602f0790cfde958dfd9'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'e227c188c94e718eab556b3d1a97ea037ae78e43b2f62e00009e5d99a1145a59'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
