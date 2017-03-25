cask 'streamlink-twitch-gui' do
  version '1.2.0'
  sha256 '0cbc6aae06938b293d30634c976be5b6cb72589334122f148f42e844a14a159c'

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast 'https://github.com/streamlink/streamlink-twitch-gui/releases.atom',
          checkpoint: '9a1db875aa77c42cb1dad36653e4747cb9b776643cfc05412d7f4ede98aa69bf'
  name 'Streamlink Twitch GUI'
  homepage 'https://github.com/streamlink/streamlink-twitch-gui/'

  depends_on cask: 'vlc'

  app 'Streamlink Twitch GUI.app'
end
