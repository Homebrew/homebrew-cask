cask 'cocoarestclient' do
  version '1.4.3'
  sha256 'e6112888fe44ce06f3c4538aa78d413dce1adcee4fd456266c013bb8ec10d1f7'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: '17b90c985e2c4d54c4a03d44efa9c9a7538fe65324a37d8e369b0c9bf5eb743d'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
