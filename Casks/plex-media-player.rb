cask 'plex-media-player' do
  version '1.2.3.589-59a54305'
  sha256 'b225893efff055dff170d2666e41d5e94737d2ea83062d5fe17b1fc8f74d6d6e'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'edf1a1e219c3414606463f321dc4c0f75c5600fa8805593eb9e13f35c86cc27f'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
