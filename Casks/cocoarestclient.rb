cask 'cocoarestclient' do
  version '1.3.14'
  sha256 'b85dfaca9f88fdad95ac87d8673b8f905557445e8792c92db78fd33f9035c5ab'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'f9fcdcf9587014c022ca8c3bcda38d9ebd7efadd89ca625f9489e1273e8c68ee'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
