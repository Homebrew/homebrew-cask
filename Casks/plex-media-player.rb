cask 'plex-media-player' do
  version '1.3.5.689-a36fa532'
  sha256 '2b7a4f83e7b4504e08a5cff325c23782e4a0c68601b8c323c9d583ee7bb33424'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'd469ecaaa1d96f403789e64422f804a382607c606fc877b418733580138ef25b'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
