cask 'streamlink-twitch-gui' do
  version '1.5.0'
  sha256 'd359136b0f69739eccc607ac5049397a474bec9856058ee9511661d0b1bb0fb5'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '161f18da236465b872d67acbd8d8e0b7c6b002feee6428faae7f3e0e22a44eea'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
