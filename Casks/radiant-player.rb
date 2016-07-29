cask 'radiant-player' do
  version '1.8.5'
  sha256 'c54d800bae9a5b658801feb119111e805138230dbc8bcaeacb51a5e71e6250f6'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '2d361d3d5dc2213a265669bd47f32008fd91f443e2b54b3736a5c2c8d3157896'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
