cask 'plex-media-player' do
  version '1.3.11.729-4be89b5c'
  sha256 '25ea9237db368b59b9958d72c3c22b062ce660afa5e00748ff54d5de045d0ec4'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'c36dacd6e217a3f1fb49fa0d17724a7f6fb7b6ace920b17bda72ea7f431e0af8'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
