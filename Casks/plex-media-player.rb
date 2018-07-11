cask 'plex-media-player' do
  version '2.14.1.880-301a4b6c'
  sha256 '50bca3314b97530dde4bf6175e63aa50b107e5635863a5b618fb385d9491a4a8'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end
