cask 'plex-media-player' do
  version '2.31.0.967-a95b6d76'
  sha256 '31e06214a695c04bf9087c74a7b5bb1178a32892a2302a9a366eb56bb2719a37'

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
