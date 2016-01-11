cask 'studio-link-plugin' do
  version '15.12.1-beta'
  sha256 '12145c5d054527a1460038166f5cf2d18219e3b614e01391af9b8b6d7a3d765f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Studio-Link-v2/backend/releases/download/#{version}/studio-link-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          :sha256 => 'abd00cdc82b7db10f419108d6cc44b83f7f1dcbac1ec579ef5aade18408c2694'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'
  license :bsd

  audio_unit_plugin 'StudioLink.component'

  zap :delete => '~/.studio-link-plugin'
end
