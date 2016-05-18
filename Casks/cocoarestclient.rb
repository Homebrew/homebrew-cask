cask 'cocoarestclient' do
  version '1.3.12'
  sha256 'fa22885d0786d502b2def77efe4d0c50c83870bd8e398dd9ba448de190705342'

  # github.com/mmattozzi/cocoa-rest-client was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast 'https://github.com/mmattozzi/cocoa-rest-client/releases.atom',
          checkpoint: 'cda663322ec0372dd95b7d777adfbfb3bd83b2e5d05d9aa0d3da3a3ada07f37e'
  name 'CocoaRestClient'
  homepage 'https://mmattozzi.github.io/cocoa-rest-client/'
  license :bsd

  app 'CocoaRestClient.app'
end
