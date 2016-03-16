cask 'radiant-player' do
  version '1.7.3'
  sha256 'fde65a5118abed307d547578bf5f8614b3a2fc3c7127eb6e5277b2e26bdb07c2'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '74cdc8f51f07cdbed9dec508c4fd7eee473749dbf2a7a51b92f5056e717fdd19'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
