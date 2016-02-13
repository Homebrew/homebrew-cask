cask 'radiant-player' do
  version '1.7.0'
  sha256 'f039f0686becb15cd48d8c5c4bb3996539d3cad91ce3f8493e09e14ba1e34374'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '696e99f5a05ecf176d8a45185cfa2d7f4cadd462aec5a23554a6c66c01d3b055'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
