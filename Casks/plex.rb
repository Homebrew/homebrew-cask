cask 'plex' do
  version '1.12.0.1232-aacabe78'
  sha256 '6da7dd4cbacc3cae4f97a1ab103731e3a62e72cf9e18984e224ccfeb3797c8b0'

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.zip"
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
