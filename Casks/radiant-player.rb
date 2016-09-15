cask 'radiant-player' do
  version '1.10.3'
  sha256 '0fd903bc43dabd62fa8f1f28f04696eeffa75012a2202b7163521bcc4f0f4656'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'c9f9ea7fa966c2d8b10ed599c98b1f3ec01839b33b73ede25b25b97d6f3a16a6'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
