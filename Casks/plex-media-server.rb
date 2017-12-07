cask 'plex-media-server' do
  version '1.10.0.4523-648bc61d4'
  sha256 '79872b380923c3ce754030bace9d88c449d46c2872316d06bb5f6cd12bc53cb8'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: '6a8c90ce1340da41c0f1f06334c7e6f1f77a12010a54e9365a0715404795b378'
  name 'Plex Media Server'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Server.app'

  uninstall quit:      'com.plexapp.plexmediaserver',
            launchctl: 'com.plexapp.mediaserver'

  zap trash: [
               '~/Library/Application Support/Plex Media Server/',
               '~/Library/Caches/PlexMediaServer/',
               '~/Library/Logs/Plex Media Server/',
               '~/Library/Preferences/com.plexapp.plexmediaserver.plist',
             ]
end
