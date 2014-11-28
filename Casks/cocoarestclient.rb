cask :v1 => 'cocoarestclient' do
  version '1.3.7'
  sha256 '78400a16afc4017a68b5506e7a6270d72ade48b3e77a802eaaaaae80a0f6319f'

  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'http://restlesscode.org/cocoa-rest-client/appcast.xml',
          :sha256 => '32d1b71d2ade6fc17554d1e7bcbc900c9ace68c34046ea7c2d785142e0d60520'
  homepage 'http://mmattozzi.github.io/cocoa-rest-client/'
  license :oss

  app 'CocoaRestClient.app'
end
