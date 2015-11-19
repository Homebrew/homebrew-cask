cask :v1 => 'cocoarestclient' do
  version '1.3.9'
  sha256 '611cf1112c8188d58ad5b00d507c4a5429fc6d1dff0bc0eb438116b672a880ba'

  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'
  license :bsd

  app 'CocoaRestClient.app'
end
