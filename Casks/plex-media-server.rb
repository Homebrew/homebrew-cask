cask 'plex-media-server' do
  version '1.3.2.3112-1751929'
  sha256 'bfc914e0bb6588a49a2fda779cb5ec4412261110faf755a4caadc590dacd500d'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: 'd4ae3f270d78dffaae884ee7630e406864033ac1ec8f841aeaefae67f43174eb'
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
