cask 'plex-media-server' do
  version '1.15.4.994-107756f7e'
  sha256 '553fc66d8d1e0ce7db8d50c8e6e5ce9f77d8e7698c0169652c8277e1b6ea2367'

  url "https://downloads.plex.tv/plex-media-server-new/#{version}/macos/PlexMediaServer-#{version}-x86_64.dmg"
  appcast 'https://plex.tv/api/downloads/1.json'
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
