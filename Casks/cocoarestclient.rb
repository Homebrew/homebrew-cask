cask 'cocoarestclient' do
  version '1.4.0'
  sha256 '069ef4ae4b00dbbcdae8a49adda5b640eca31ceb9687ebda197ac1c2e8196ba2'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: '0b890ae53bd2533e254fab5f9c231003aef0eb93ff5abeff2b2ac3554f645b05'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
