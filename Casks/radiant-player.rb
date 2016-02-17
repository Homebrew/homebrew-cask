cask 'radiant-player' do
  version '1.7.1'
  sha256 '8d17be4846134cb23d4b5f18baeda0f26ed549d0079545e078591d5c5a35183f'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'a3efd71e2964329f23e040134e7fc2bbed12645305b2ae1d53a87b4dc44acd24'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
