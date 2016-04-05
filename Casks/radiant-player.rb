cask 'radiant-player' do
  version '1.8.2'
  sha256 '37eddb9a8b11fe2e644054a748e10ec30bc7a548977b87a96c5cc425d515d57e'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '7ff39036c3395f4071a250433c94274653d1b435af8fb5a27ab3c41abf232b69'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
