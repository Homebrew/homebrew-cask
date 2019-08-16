cask 'plex' do
  version '1.0.0.792-d4adb056'
  sha256 'be6fc8e18c2216c50a4892d14af76ff21ac30134f5e2af773f46669739bbf109'

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.dmg"
  appcast 'https://plex.tv/api/downloads/6.json'
  name 'Plex'
  homepage 'https://www.plex.tv/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plex.app'

  zap trash: [
               '~/Library/Application Support/Plex',
               '~/Library/Caches/Plex',
               '~/Library/Logs/Plex',
             ]
end
