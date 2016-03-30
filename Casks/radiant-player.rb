cask 'radiant-player' do
  version '1.7.4'
  sha256 '26614f4d040b97d1d0e45ac0431f1ae19ba1ea90b850b622521f1e0191e34166'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'cb1555401a1ea3acf15841dec4c156f9d0ff7ed4ba507c03c113418a28c40107'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
