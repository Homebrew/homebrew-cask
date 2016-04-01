cask 'radiant-player' do
  version '1.8.0'
  sha256 '61e5bb2cfd1af529c5276ba8e8848d18c2ed24d0d3e672786ff3df67f0a45720'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '6185e6d867e02bf988bbe0440af8d086fa4b5c07df70422194e517e7f51fd4bc'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
