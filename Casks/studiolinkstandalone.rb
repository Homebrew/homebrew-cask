cask 'studiolinkstandalone' do
  version '16.02.0-beta'
  sha256 '8427a2013295e02fa8679f57a3a9b991bafe864861179c3fd719ec6f5ea32869'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-standalone-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '9afde3059f8be79f95dee629fe161573f616d6eb9f39e22f13ac2ec9bd9f56f0'
  name 'Studio Link Standalone'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'
  license :bsd

  app 'StudioLinkStandalone.app'

  zap delete: '~/.studio-link'
end
