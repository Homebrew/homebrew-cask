cask 'plex-media-server' do
  version '1.18.2.2058-e67a4e892'
  sha256 'fa9ec51a901eeab7acc714bd940df73193e6c57fb21062f870ba8add675684bf'

  url "https://downloads.plex.tv/plex-media-server-new/#{version}/macos/PlexMediaServer-#{version}-x86_64.zip"
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
