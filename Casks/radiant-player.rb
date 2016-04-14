cask 'radiant-player' do
  version '1.8.3'
  sha256 '9fc6fabc4b2fa0041ba185ec7ca110cb17c3ab010f1fb28693fc4d9215811aa1'

  # github.com/radiant-player/radiant-player-mac was verified as official when first introduced to the cask
  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          checkpoint: 'db821863efb58ea91eb17b61961f55bc295297abf662955018302e2d482589c1'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
