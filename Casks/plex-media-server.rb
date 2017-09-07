cask 'plex-media-server' do
  version '1.8.4.4249-3497d6779'
  sha256 'af5da8413e29470943024fdc1cca936f3c972601735cb01fa8a6b05b60171b88'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: 'cd3569d942ca20718436b445229620ffbf56517fbd5ba3953095ecbb16c82671'
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
