cask 'plex-media-server' do
  version '1.12.1.4885-1046ba85f'
  sha256 'bab5c698cdb2e43b301bd4e377ef7754e0ec67ee31b131a72536b3fae2fe5a97'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  appcast 'https://plex.tv/api/downloads/1.json',
          checkpoint: '3fc168568c7d6c9f2fbdd2f7734ea0e47dce9d3417dd8f332ca8537b6523ca71'
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
