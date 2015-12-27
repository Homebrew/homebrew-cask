cask 'radiant-player' do
  version '1.6.2'
  sha256 '41fe94faeb571c0393a80751b15fa86b73906ada515b3c12dbd71353b4426429'

  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom',
          :sha256 => 'fd476d1c9ce75b9b33de45259ccd6f45095ef5e0702219333edccd6aac6a06ab'
  name 'Radiant Player'
  homepage 'https://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
