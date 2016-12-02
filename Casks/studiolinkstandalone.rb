cask 'studiolinkstandalone' do
  version '16.04.1-beta'
  sha256 'b32c89b8d4ee90a5eb04a8eb6071943fe5ab545e1b31a3dd0b7d6614c159dcdc'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-standalone-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '0ad259caf7f33deb8caf605b884a128e2e232285831ed938fc030ccce8b5252c'
  name 'Studio Link Standalone'
  homepage 'https://doku.studio-link.de/standalone/installation-standalone.html'

  app 'StudioLinkStandalone.app'

  zap delete: '~/.studio-link'
end
