cask 'plex-media-player' do
  version '2.17.0.890-7d18e33d'
  sha256 '962ef5680f4b3fe759ded974d5f9d0cdcf1d34a3d75a6fd50f0e5439c899087b'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
