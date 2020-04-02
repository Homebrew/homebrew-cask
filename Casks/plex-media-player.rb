cask 'plex-media-player' do
  version '2.54.0.1067-1a7bc4f6'
  sha256 'd81b0ecb2b7e85401f953fda9f39c2df88f2063cf7baa1f1796bc645d55739b5'

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
