cask 'clementine' do
  version '1.3.0'
  sha256 '250fbe972a29c6c122245d4b56ce14ee53b41a0671f5bd4cf6158228f4b28a20'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version.major_minor}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: '8ac60de3463361a7cd9b77923e4110140d1c3392406f42762d71c29a31d767e9'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'
  license :gpl

  conflicts_with cask: 'caskroom/versions/clementine-rc'

  app 'Clementine.app'

  zap delete: [
                '~/Library/Application Support/Clementine',
                '~/Library/Caches/org.clementine-player.Clementine',
                '~/Library/Preferences/org.clementine-player.Clementine.plist',
                '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
              ]
end
