cask 'studiolinkcomponent' do
  version '16.02.2-beta'
  sha256 '1ed7524c6cb7a4635eb8c27310ca894f56df6db335dc08c9bcda5843be64f87a'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-plugin-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: 'f12e402194581d2fc3c8230faa2b2b069a3b57d6d5ad5df3df3c0b83d6103098'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'

  audio_unit_plugin 'StudioLink.component'

  zap delete: '~/.studio-link-plugin'
end
