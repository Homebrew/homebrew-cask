cask 'studiolinkcomponent' do
  version '16.12.0-beta'
  sha256 'd4fde3b2a9a5d9996de23a7478ce844b51021c9d4a3f4b0d5b007aba228d2084'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-plugin-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '36269f61a315e45e520ab68fbc3a06b5b6bfad10a671b81fa680b4420e651519'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'

  audio_unit_plugin 'StudioLink.component'

  zap delete: '~/.studio-link-plugin'
end
