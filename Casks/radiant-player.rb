cask 'radiant-player' do
  version '1.10.2'
  sha256 '0635df95b90013f1d3e885a0b363f0c4dc16afedfc9faafaf8bb02c947b5d25c'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'b14908e4fee8fc41551ffddfa2b634c23368297795cc20393bd753be9f214609'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
