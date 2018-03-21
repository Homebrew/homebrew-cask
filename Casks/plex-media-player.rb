cask 'plex-media-player' do
  version '2.7.0.806-608417d4'
  sha256 '961bc4a9196ce70c42d5cc4f2b3a512ed3e4b9a7d09302361b7358e1579e19ba'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: 'edbe55f036c3668053467a7dbfed97eae1561149892b60b9ad925d564372dadf'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
