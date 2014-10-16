class RadiantPlayer < Cask
  version '1.3.0'
  sha256 '6b9fb744d88148a4d74ee9a5f3f3101b57b0051c6376171c1966a48980d19229'

  url "https://github.com/kbhomes/radiant-player-mac/releases/download/v#{version}/Radiant.Player.zip"
  homepage 'http://kbhomes.github.io/radiant-player-mac/'
  license :mit

  app 'Radiant Player.app'
end
