cask 'streamlink-twitch-gui' do
  version '1.0.1'
  sha256 '382c356e439f2c26cc7a46c410bda24e0fd089ef4d8fe3dba34ea946db6cb084'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: 'e9cfb20cea1a98b0ce3f121c0017230f23dc3ea29918480067dbb6bfab3c06b9'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on cask: 'vlc'

  app 'Streamlink Twitch GUI.app'
end
