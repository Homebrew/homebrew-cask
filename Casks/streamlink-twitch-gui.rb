cask 'streamlink-twitch-gui' do
  version '1.0.0'
  sha256 'c91ab69b8a38bac7517e9d41062a7d4664e3620c9654ecde337d6b64d1c3d0ca'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '51a457a6201c9fde3d502b32e680f62befdf9d57db91ee87f1858b647d8870b9'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on cask: 'vlc'

  app 'Streamlink Twitch GUI.app'
end
