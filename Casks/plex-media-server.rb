cask 'plex-media-server' do
  version '1.9.2.4285-9f65b88ae'
  sha256 '03be4404365f6cd7268c572b9f7d0609fa9a7230471a49bc31a6c673daf6a6b9'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: 'e62ed32932fa68d7e89879b4d8ea585281a65744254a8821d20ba9c4e23a6f40'
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
