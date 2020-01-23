cask 'plex-media-player' do
  version '2.49.0.1041-bf8608f7'
  sha256 '306e5dd17450e4438aebb0df383813a895aec965bbb3bf760c7e460bbf9ffa55'

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
