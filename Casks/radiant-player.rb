cask 'radiant-player' do
  version '1.10.1'
  sha256 '8dde7ed4367c2d880b89b2e186a7d0de8da95eadbf26b143f5ed94cef93360ad'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '906e72414df3c95110ae436680d4fa31f2933931eba2b3d696c496e5184dadcb'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
