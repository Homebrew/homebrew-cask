cask 'plex-media-player' do
  version '1.3.10.720-dfcd90a6'
  sha256 'bd5319cc68b4848c935538a38c85575279b808fe15a6474160ebf4374596a8e9'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'f45603d95a95ac2d72dd1f9a7489ea1fd5f54a362bf9d8acfad969fdc17ded15'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
