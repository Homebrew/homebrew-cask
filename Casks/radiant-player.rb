cask 'radiant-player' do
  version '1.11.0'
  sha256 '9950ea05dbd423a003570f607d127d25b9c48b002452324d69b99e3ccf28d927'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '687c6c8767a1375ff540b6398568f0db7d9bde6479883c6cd761418770a79c50'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
