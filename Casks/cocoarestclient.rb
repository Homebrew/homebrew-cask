cask :v1 => 'cocoarestclient' do
  version '1.3.7'
  sha256 '78400a16afc4017a68b5506e7a6270d72ade48b3e77a802eaaaaae80a0f6319f'

  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom'
  name 'CocoaRestClient'
  homepage 'http://mmattozzi.github.io/cocoa-rest-client/'
  license :bsd

  app 'CocoaRestClient.app'
end
