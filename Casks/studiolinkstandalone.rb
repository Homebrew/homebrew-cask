cask 'studiolinkstandalone' do
  version '17.03.1-beta'
  sha256 '313339a57e3c49463509237f247f96f4279efbceb319916f6f0e6f78fe967925'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-standalone-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: 'bff5b9f008c1b4203eb2d845f8ec1e197392e45a5417fb064ae5f1a55248bf48'
  name 'Studio Link Standalone'
  homepage 'https://doku.studio-link.de/standalone/installation-standalone.html'

  app 'StudioLinkStandalone.app'

  zap trash: '~/.studio-link'
end
