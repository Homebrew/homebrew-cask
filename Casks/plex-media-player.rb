cask 'plex-media-player' do
  version '2.8.0.813-6e77dc0c'
  sha256 '7e1db3227450501ec502a6a5544c5aa49821c08af0f9148a21ecd84782127237'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '7ac452933df15525b4f4cd7de641c00e3b147cea4a83ab5846339978ced9a7cd'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
