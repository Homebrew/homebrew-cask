cask 'plex-media-server' do
  version '1.4.4.3495-edef59192'
  sha256 '7a7a0b90e4245e05a012a1c10f55b7de7b6d146a7004d60f7b7c2692d34057f7'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: 'c3c840fec0acc30d142b2c846c1b2771b111372f67d7476f53e68337b860ba0d'
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
