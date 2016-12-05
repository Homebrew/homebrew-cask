cask 'studiolinkcomponent' do
  version '16.04.1-beta'
  sha256 '4b34beca575517d5d35d0b74479ebd36471903902eb770d5752d6ea6d4f7ace7'

  # github.com/Studio-Link-v2/backend was verified as official when first introduced to the cask
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-plugin-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '0ad259caf7f33deb8caf605b884a128e2e232285831ed938fc030ccce8b5252c'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'

  audio_unit_plugin 'StudioLink.component'

  zap delete: '~/.studio-link-plugin'
end
