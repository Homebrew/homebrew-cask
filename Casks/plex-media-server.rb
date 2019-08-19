cask 'plex-media-server' do
  version '1.16.5.1488-deeb86e7f'
  sha256 'e63920fae370b73bf33b0b77d5dd317aea21879bc0475b6dd652c5a032c5cfbf'

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
