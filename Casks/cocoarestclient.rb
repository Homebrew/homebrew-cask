cask 'cocoarestclient' do
  version '1.3.11'
  sha256 '3b2955738beafc996f87b6444b52153d0877d2e7900558f6e75fdf3682fa9ea4'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: '84380c3db02b10ffda6f23b079e1f1c17a3871d3d32720e09c67a237a269ec6f'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'
  license :bsd

  app 'CocoaRestClient.app'
end
