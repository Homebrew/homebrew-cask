cask :v1 => 'plex-media-player' do
  version '1.0.0.5-53192cb0'
  sha256 '82e11dde797d36d8e68e7aa2b5b25c70a05207f200737317810b8303ca54c329'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name 'Plex Media Player'
  homepage 'https://plex.tv/'
  license :gratis

  app 'Plex Media Player.app'
end
