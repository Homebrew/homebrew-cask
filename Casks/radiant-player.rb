cask 'radiant-player' do
  version '1.11.2'
  sha256 '53dbde2d2fefb6def1cb9ec9c83305cb5cc1ebaf10d0bed407900234df643681'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '38863b628f4b5673196067e2ae484d9d5bbbab1252d302e9016f334fd9c94e75'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'

  app 'Radiant Player.app'
end
