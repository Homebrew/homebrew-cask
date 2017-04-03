cask 'streamlink-twitch-gui' do
  version '1.2.1'
  sha256 '9bd8344700888f345bff4c40481c30d20a83e39c4b6b0b2c89698b728ce3a189'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '69b65c81f5d69953af59bfb629393ebb992922b959249c2fd47cd4ad63cc1307'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on cask: 'vlc'

  app 'Streamlink Twitch GUI.app'
end
