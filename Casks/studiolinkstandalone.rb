cask 'studiolinkstandalone' do
  version '16.12.0-beta'
  sha256 '65a37884f47bdf2401ccf4fa0567196f1163c1b1dcc1d27ebaabab7a2ee3d40a'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-standalone-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '36269f61a315e45e520ab68fbc3a06b5b6bfad10a671b81fa680b4420e651519'
  name 'Studio Link Standalone'
  homepage 'https://doku.studio-link.de/standalone/installation-standalone.html'

  app 'StudioLinkStandalone.app'

  zap delete: '~/.studio-link'
end
