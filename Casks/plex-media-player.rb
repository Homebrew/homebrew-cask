cask 'plex-media-player' do
  version '2.4.1.787-54a020cd'
  sha256 '3fc22927bc4a75f6cfe992e5930f11bf14793ff5b07f96ed4e6f51b936d4ab68'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '6696180c70c4bfa5fc8d3edc9f403bd646b4a1819b0b1890495f27ca4ad87321'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
