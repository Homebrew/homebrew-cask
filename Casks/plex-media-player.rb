cask 'plex-media-player' do
  version '2.46.0.1031-6dc7c723'
  sha256 '1cb57278445ab79904b746148c50bafa2417deced8b784243c945dd492f26f31'

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
