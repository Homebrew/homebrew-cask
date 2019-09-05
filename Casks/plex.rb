cask 'plex' do
  version '1.2.0.875-b7362913'
  sha256 '41fe0038c1990dded6677ff6517ac9189c07bc2b7dab731ba4ab144da1527efa'

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
