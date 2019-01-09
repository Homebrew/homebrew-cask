cask 'plex-media-player' do
  version '2.25.0.940-485e2ea4'
  sha256 '0b39093f1cffd2dac990294caf7a0a983881456d01bdb6ec743b458b77567edb'

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
