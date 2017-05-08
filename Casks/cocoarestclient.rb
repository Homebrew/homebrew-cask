cask 'cocoarestclient' do
  version '1.3.17'
  sha256 'af1fa96d99500d51d4e1a31d165fed839e6908317e334cab151d82c38cd564c8'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'a4a1514aff0fed1d3940b702218768c9d5b086cdeca7ad05659e0c354aaffae6'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'

  app 'CocoaRestClient.app'
end
