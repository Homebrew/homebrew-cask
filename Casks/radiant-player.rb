cask 'radiant-player' do
  version '1.7.5'
  sha256 'ccb072e2af93035587cdd8335d8ed51db2855059466ae96fc337a4e1613c56c9'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'cb1555401a1ea3acf15841dec4c156f9d0ff7ed4ba507c03c113418a28c40107'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
