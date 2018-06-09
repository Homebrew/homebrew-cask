cask 'plex-media-server' do
  version '1.13.2.5142-3ba6662e9'
  sha256 'b5ad03f2fa2242b027fad59b5fc0d5de10f2c5af55a612c5031c6f67806ae08c'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: '957931fc05464588fa76d6b3de7bb7156b83d33554e1a91876243897a65424f3'
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
