cask :v1 => 'radiant-player' do
  version '1.3.1'
  sha256 'eed8d2c0d5457938b65ad41fd01ff9ea3745518e7951e62f68974b2884016dbf'

  url "https://github.com/kbhomes/radiant-player-mac/releases/download/v#{version}/Radiant.Player.zip"
  homepage 'http://kbhomes.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
