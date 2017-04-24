cask 'studiolinkcomponent' do
  version '17.03.1-beta'
  sha256 'f7cc98eec919a304127d9f50e54a54db29a7dd7c5c0d38d6762d7f49df118a95'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-plugin-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: 'bff5b9f008c1b4203eb2d845f8ec1e197392e45a5417fb064ae5f1a55248bf48'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'

  audio_unit_plugin 'StudioLink.component'

  zap delete: '~/.studio-link-plugin'
end
