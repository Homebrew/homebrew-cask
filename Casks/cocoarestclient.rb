cask 'cocoarestclient' do
  version '1.3.10'
  sha256 'a57933614eb8758fc4ef6d8f24ba8c27d545763c57f396c65260d421aa24b8c0'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'cff443ebe4b177855551ffa7f9cca8afe0ec367ba29f2cdbc70b8b3df030cca4'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'
  license :bsd

  app 'CocoaRestClient.app'
end
