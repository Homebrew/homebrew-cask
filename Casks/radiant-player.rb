cask 'radiant-player' do
  version '1.7.1'
  sha256 '8d17be4846134cb23d4b5f18baeda0f26ed549d0079545e078591d5c5a35183f'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '696e99f5a05ecf176d8a45185cfa2d7f4cadd462aec5a23554a6c66c01d3b055'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
