cask 'plex-media-server' do
  version '1.16.1.1291-158e5b199'
  sha256 'cdcc13d67ca242b167aa853fa49ae68248e6fe0cc91e3e9e9c51c85ec9e6aa6c'

  url "https://downloads.plex.tv/plex-media-server-new/#{version}/macos/PlexMediaServer-#{version}-x86_64.dmg"
  appcast 'https://plex.tv/api/downloads/5.json'
  name 'Plex Media Server'
  homepage 'https://www.plex.tv/'

  auto_updates true

  app 'Plex Media Server.app'
  binary "#{appdir}/Plex Media Server.app/Contents/MacOS/Plex Media Scanner", target: 'pms'

  uninstall quit:      'com.plexapp.plexmediaserver',
            launchctl: 'com.plexapp.mediaserver'

  zap trash: [
               '~/Library/Application Support/Plex Media Server/',
               '~/Library/Caches/PlexMediaServer/',
               '~/Library/Logs/Plex Media Server/',
               '~/Library/Preferences/com.plexapp.plexmediaserver.plist',
             ]
end
