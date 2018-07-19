cask 'plex-media-server' do
  version '1.13.4.5271-200287a06'
  sha256 '27785b24abcf0003a3e27ede80c81a369b7a0a2fde528f408bbd4ac62518d071'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json'
  name 'Plex Media Server'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Server.app'

  uninstall quit:      'com.plexapp.plexmediaserver',
            launchctl: 'com.plexapp.mediaserver'

  zap trash: [
               '~/Library/Application Support/Plex Media Server/',
               '~/Library/Caches/PlexMediaServer/',
               '~/Library/Logs/Plex Media Server/',
               '~/Library/Preferences/com.plexapp.plexmediaserver.plist',
             ]
end
