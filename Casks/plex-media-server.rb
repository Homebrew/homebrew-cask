cask 'plex-media-server' do
  version '1.3.4.3285-b46e0eafd'
  sha256 '3c311c39ca79fc1ddf9d84ac6ae492170ea8eb242ab0f0d44d31c07d47eb9306'

  url "https://downloads.plex.tv/plex-media-server/#{version.chop.chop}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: 'b4180f9852b2b5af6010efb9ca2d24462edf92a35da954c939b999ff3bcfa562'
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
