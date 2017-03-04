cask 'studiolinkstandalone' do
  version '16.12.1-beta'
  sha256 '2840d9e3aba90bef9a1b672003c125d499d05ca23e660f933dc087c40741878e'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-standalone-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '9e80271ad4e47265ce19b1f1438c476eb3a3bd014e3d9f35b0d770aef856b39d'
  name 'Studio Link Standalone'
  homepage 'https://doku.studio-link.de/standalone/installation-standalone.html'

  app 'StudioLinkStandalone.app'

  zap delete: '~/.studio-link'
end
