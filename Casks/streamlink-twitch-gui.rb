cask 'streamlink-twitch-gui' do
  version '1.9.0'
  sha256 '8cef5e200ea115440f20020cb88cc4c40a96ed3f64ef8ee904577c3bebea2181'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
