cask 'radiant-player' do
  version '1.11.1'
  sha256 'e7c4ef68425511aa58516ccc408d480d95599f027fa15bc5214a80aa009be880'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: '5d7d888b1d9d4ff05b4bf5a8aef01c6f45a5da9693815368ecd765ebc3eb9e27'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
