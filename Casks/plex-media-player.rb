cask 'plex-media-player' do
  version '2.12.1.871-6c71195e'
  sha256 '6e9882df81b4f62db7e3a29d6bb3a232f99f194db181cf2390554766c0583cdc'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
