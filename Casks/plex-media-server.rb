cask 'plex-media-server' do
  version '1.4.3.3433-03e4cfa35'
  sha256 '0b543f12a8a0aeecc89fe39b9cf300bd2acf3bd00ef46c3e02ccb6e2fb91a06f'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: '4f407637442bd7e311732eca7ebf8fca7f9e7b05edba7721a09edc353ef852ec'
  name 'Plex Media Server'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mountain_lion'

  app 'Plex Media Server.app'

  uninstall quit:      'com.plexapp.plexmediaserver',
            launchctl: 'com.plexapp.mediaserver'

  zap delete: [
                '~/Library/Application Support/Plex Media Server/',
                '~/Library/Caches/PlexMediaServer/',
                '~/Library/Logs/Plex Media Server/',
                '~/Library/Preferences/com.plexapp.plexmediaserver.plist',
              ]
end
