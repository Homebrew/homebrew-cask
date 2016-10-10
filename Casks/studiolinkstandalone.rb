cask 'studiolinkstandalone' do
  version '16.02.2-beta'
  sha256 '721825e9e22dee10b0e87e49cc203b164e166e4433bbd94c099f82b5678ce52c'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-standalone-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: 'f12e402194581d2fc3c8230faa2b2b069a3b57d6d5ad5df3df3c0b83d6103098'
  name 'Studio Link Standalone'
  homepage 'https://doku.studio-link.de/standalone/installation-standalone.html'

  app 'StudioLinkStandalone.app'

  zap delete: '~/.studio-link'
end
