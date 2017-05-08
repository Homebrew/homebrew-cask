cask 'radiant-player' do
  version '1.11.4'
  sha256 '4594e54498c526cc33c50efa09dbf22e5a35fcccb3dba84a195160c5c7171794'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'bcca0da37fe819e29830731a7a020df199a6d49fb11c3e1c7c8135dd6a7b0707'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'

  app 'Radiant Player.app'
end
