cask 'cocoarestclient' do
  version '1.3.15'
  sha256 '1a49512f86d95193704a11bb1e6abd8647d5d8a665688d10fd75b4addb48620c'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'a49066cfd87b96657f1a0abbe866f8f6040e44d8e37c702efb93495c47fd81f9'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
