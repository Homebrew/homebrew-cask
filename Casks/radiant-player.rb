cask :v1 => 'radiant-player' do
  version '1.3.2'
  sha256 '652cd6772bb1f568952497175722422b623c2845ae7854aaff9197bfa73770f4'

  url "https://github.com/kbhomes/radiant-player-mac/releases/download/v#{version}/Radiant.Player.zip"
  appcast 'https://github.com/kbhomes/radiant-player-mac/releases.atom'
  name 'Radiant Player'
  homepage 'http://kbhomes.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
