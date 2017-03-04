cask 'plex-media-server' do
  version '1.3.4.3285-b46e0eafd'
  sha256 '3c311c39ca79fc1ddf9d84ac6ae492170ea8eb242ab0f0d44d31c07d47eb9306'

  url "https://downloads.plex.tv/plex-media-server/#{version.chop.chop}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: '47e470b9f6949b744cbe5192e5e2687f2d5729b83d80c00a9b9665a7cd798bf6'
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
