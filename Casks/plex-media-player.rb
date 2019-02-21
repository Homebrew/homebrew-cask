cask 'plex-media-player' do
  version '2.28.0.952-5408ca22'
  sha256 'cef20aa2f5f04bf8f4abe763ed245d1e17b8a62e8e09b8ca464653ce29dc2541'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'

  zap trash: [
               '~/Library/Application Support/Plex Media Player',
               '~/Library/Caches/Plex Media Player',
               '~/Library/Logs/Plex Media Player',
               '~/Library/Preferences/tv.plex.Plex Media Player.plist',
             ]
end
