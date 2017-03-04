cask 'streamlink-twitch-gui' do
  version '1.1.1'
  sha256 '9df47f1877027792b63c1b0d7d8d6bea24fe3e7e73ddb386d9879f7c831360be'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: 'f0488ed908e21c6743dfa889e751a2ec47892ce87aa4325266830acae3b81370'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on cask: 'vlc'

  app 'Streamlink Twitch GUI.app'
end
