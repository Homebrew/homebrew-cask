class Cocoarestclient < Cask
  version '1.3.7'
  sha256 '78400a16afc4017a68b5506e7a6270d72ade48b3e77a802eaaaaae80a0f6319f'
  
  url 'https://github.com/mmattozzi/cocoa-rest-client/releases/download/1.3.7/CocoaRestClient-1.3.7.dmg'
  appcast 'http://restlesscode.org/cocoa-rest-client/appcast.xml'
  homepage 'http://mmattozzi.github.io/cocoa-rest-client/'

  link 'CocoaRestClient.app'
end
