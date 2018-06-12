cask 'plex-media-player' do
  version '2.12.0.869-010a1af4'
  sha256 '21840843f19d915ab9f5f05c3fad02a677f7209d676387ccef57dcbfbeaf0865'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
