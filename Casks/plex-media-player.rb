cask 'plex-media-player' do
  version '2.21.0.914-4839cbf2'
  sha256 '6f7d52072dd9a352b5bc606e7d5b2e723cabaa1069fbae741f576ae538c01b21'

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
