cask 'plex-media-player' do
  version '2.53.0.1063-4c40422c'
  sha256 '7ba1aa849d6ea74330c87345d8bdca8ffa2dffe857b53b2b0f524ebdf1fd9091'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'

  zap trash: [
               '~/Library/Application Support/Plex Media Player',
               '~/Library/Caches/Plex Media Player',
               '~/Library/Logs/Plex Media Player',
               '~/Library/Saved Application State/tv.plex.Plex Media Player.savedState',
               '~/Library/Preferences/tv.plex.Plex Media Player.plist',
             ]
end
