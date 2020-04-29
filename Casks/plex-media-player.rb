cask 'plex-media-player' do
  version '2.56.0.1071-85947843'
  sha256 'e4e1ca588e985ca6c9ac19b6ba61f06251ee19ffabffda1b27e04ad11f89b4e2'

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
