cask 'streamlink-twitch-gui' do
  version '1.8.0'
  sha256 '90ea37306589e87b1ff51adeb4e09bb39a01d94779a5086d35d7d1eae20840e0'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
