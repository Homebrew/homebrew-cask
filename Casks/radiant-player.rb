cask 'radiant-player' do
  version '1.9.0'
  sha256 '568647981af6acf71f000b969c174805fa44e17246f3dbe021abc9aa4b00e0a6'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '405d119dd4265aa9ea899c1aed15d3c1124c5a7147f46b1c2a97066a70bcef8c'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
