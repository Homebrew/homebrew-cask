cask 'streamlink-twitch-gui' do
  version '1.3.0'
  sha256 '45bc8f6571a8ef76dabc3d173a05959316c9a5a81792f8871e14a1c04f921fd8'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '61beda7a5bbae69e6844dd81e505060fb6562a43cb2d32d83a0bd56380c56a06'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
