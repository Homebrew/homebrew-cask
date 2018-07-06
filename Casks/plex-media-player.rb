cask 'plex-media-player' do
  version '2.13.0.877-6e1ea2cb'
  sha256 '73dbc3289761e9c2144a3985769db097a672b4a5dee8052515c22486f53c6203'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
