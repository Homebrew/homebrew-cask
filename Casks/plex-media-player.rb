cask 'plex-media-player' do
  version '2.19.0.902-42a9f589'
  sha256 'b3f9e114586c84a665a5e2a87dab5495b4a6af5a4c7fd6230d66115f0b641268'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
