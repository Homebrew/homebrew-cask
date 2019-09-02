cask 'streamlink-twitch-gui' do
  version '1.8.1'
  sha256 'c18b971a6974fbe7ff60210e419265df0443054b73bba5cdae94d1ed648b92c3'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
