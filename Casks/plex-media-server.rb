cask 'plex-media-server' do
  version '1.19.1.2701-6327e27bf'
  sha256 '819c31b065cb4ccf60d0f93187216d5add992485c2185bee7b89ee08e0f21cb6'

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
