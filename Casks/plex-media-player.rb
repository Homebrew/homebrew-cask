cask 'plex-media-player' do
  version '2.20.0.909-46413dd1'
  sha256 'cc20d9398afd7e87cff8a3785a40e8ee86013d9b2bb3f7acde04fc67b2eda909'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
