cask 'streamlink-twitch-gui' do
  version '1.4.1'
  sha256 '8d4261cd2f249ba3572aab9a878342be8987b40091978fc49b123ca391771970'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: 'e81ec5a2bf1e52ce380c86f66da34b657c6679a693ac1a048e7de64896d572d7'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
