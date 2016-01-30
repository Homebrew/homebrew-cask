cask 'studio-link-plugin' do
  version '15.12.2-beta'
  sha256 '3b83c27e7b91764ad11c8cf2a0a6ac6d55132123e8a8594f38ce25c83b0f3342'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Studio-Link-v2/backend/releases/download/#{version}/studio-link-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '284425a11bad52cf7f6ea23d36abe94058fdda30871a2af95d292b43c173dc01'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'
  license :bsd

  audio_unit_plugin 'StudioLink.component'

  zap delete: '~/.studio-link-plugin'
end
