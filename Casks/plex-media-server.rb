cask 'plex-media-server' do
  version '1.9.4.4325-1bf240a65'
  sha256 '910a0fe8ea3f7b0f9d921fe18f8391669a25dd77958fae90b4b4a35effbe1225'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: 'aa1ed92e9d1c697c4c6194f11b9168253718b284bb8c14dbcbd7d8d2c5d30af8'
  name 'Plex Media Server'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :mavericks'

  app 'Plex Media Server.app'

  uninstall quit:      'com.plexapp.plexmediaserver',
            launchctl: 'com.plexapp.mediaserver'

  zap delete: [
                '~/Library/Caches/PlexMediaServer/',
                '~/Library/Logs/Plex Media Server/',
              ],
      trash:  [
                '~/Library/Application Support/Plex Media Server/',
                '~/Library/Preferences/com.plexapp.plexmediaserver.plist',
              ]
end
