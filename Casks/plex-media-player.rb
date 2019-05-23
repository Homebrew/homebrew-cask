cask 'plex-media-player' do
  version '2.34.0.983-edb7fbf7'
  sha256 '1a6a7b4cbd9e6b5125c7193cf381c7efa4e92887a62cac87b1cb750ab14380e0'

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
