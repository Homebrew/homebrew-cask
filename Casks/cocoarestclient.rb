cask 'cocoarestclient' do
  version '1.3.13'
  sha256 'f5c0a8b394c61527abf2f3be23435da05e614268e289fb7159ecb36583a16ae8'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'ec7507cb2ec1bbbf9fbdb09558c0d8809cdda7ce06c5551447a6fcb9b4dcd562'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'
  license :bsd

  app 'CocoaRestClient.app'
end
