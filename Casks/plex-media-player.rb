cask 'plex-media-player' do
  version '1.3.4.670-1d4f6da1'
  sha256 '7624435bc35c0cd7c4e72f54ec1517a4e2db3324000a399bbf3ab3e439d02822'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '2b9ecdf5432ded1df4955ca2d205398dc5092a5a7044cd5cba6d27a25e637702'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Player.app'
end
