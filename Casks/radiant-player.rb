cask :v1 => 'radiant-player' do
  version '1.5.0'
  sha256 '5740a8a4f6eebadb6b961f0510120bbd225e8c7c5b94f7a8da0f6710ee5f79d8'

  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/Radiant.Player.zip"
  appcast 'https://github.com/radiant-player/radiant-player-mac/releases.atom'
  name 'Radiant Player'
  homepage 'http://radiant-player.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
