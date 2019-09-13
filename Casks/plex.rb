cask 'plex' do
  version '1.3.0.910-77ef46d6'
  sha256 'b47ea7f61a8d2d1b1aee43640404c7b589ff5b7e42841b6187d8bf170edf2866'

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
