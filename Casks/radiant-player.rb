cask :v1 => 'radiant-player' do
  version '1.4.1'
  sha256 '42f5156eeae7a64b8c037d373bab5594d2e831a7309104fcac44a369465a108a'

  url "https://github.com/kbhomes/radiant-player-mac/releases/download/v#{version}/Radiant.Player.app.zip"
  appcast 'https://github.com/kbhomes/radiant-player-mac/releases.atom'
  name 'Radiant Player'
  homepage 'https://kbhomes.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
