cask 'plex-media-player' do
  version '1.0.5.210-9c69e092'
  sha256 '729116a4319657ec548d0ca1e0dd3147cceaad98ac5a6a3fc24a886baabc7fe3'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
