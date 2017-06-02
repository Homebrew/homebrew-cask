cask 'streamlink-twitch-gui' do
  version '1.3.1'
  sha256 '47eb3ad0a94641d8e3d8d215b5e5142f361da80541f4d17e0d468ea57876500e'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '808e887201970c60261502c1f108b157eba799ebc6dcf74c6c381ecc251d7d0e'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
