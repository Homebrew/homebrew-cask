cask 'plex-media-server' do
  version '1.5.5.3634-995f1dead'
  sha256 'b52fc15b8af39a29a760f6687a4c15f44697c8d007c327d873dc9cbba7413de5'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: '389713decf32f514cfeb6baa10f81fb4c9f13abfc9f0a7bf2613874c1266a092'
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
