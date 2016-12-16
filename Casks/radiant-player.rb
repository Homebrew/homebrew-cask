cask 'radiant-player' do
  version '1.11.3'
  sha256 'bc2ce000bd07b1c29638a861b128c08f26b9ba9ce29607d14530c2c9f7ded717'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '210d8eca77faedc1251ae4e1d7a0ecd2e273e4fe6da42599327aac962d3c6586'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'

  app 'Radiant Player.app'
end
