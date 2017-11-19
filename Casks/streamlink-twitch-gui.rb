cask 'streamlink-twitch-gui' do
  version '1.4.0'
  sha256 '9674458b84b3a1452b64df89e2116047653a52731f7566b9784985cd7972eece'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '03697f5053d89fbe6b3e92f1755dba7161755e9bc70bbebd1b89c5ecfef7a18b'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on formula: 'streamlink'

  app 'Streamlink Twitch GUI.app'
end
