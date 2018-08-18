cask 'plex-media-player' do
  version '2.16.0.885-f2338b5e'
  sha256 'eb4da0df3ba952fa067e1e041d116ce49e5aa176cad7b3c2680eb14f61cd7aee'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
