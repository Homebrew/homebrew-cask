cask 'plex' do
  version '1.15.1.1358-43550df5'
  sha256 '221e390c66c93c0d0618249d03338af5f4e11b5949f0aec34cdf7c7ac0d758d5'

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
