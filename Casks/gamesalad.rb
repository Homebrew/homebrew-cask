class Gamesalad < Cask
  version '0.14.4.1-beta'
  sha256 '05f68db92cee37fedffe23a2950fa55c375fd53acd7d19ae8fd42884345814e7'
  
  url 'http://gs.releases.s3.amazonaws.com/creator/0.10.4.1/GameSalad-Creator-0.10.4.1-beta.dmg'
  appcast 'http://gamesalad.com/download/studioUpdates'
  homepage 'http://gamesalad.com'

  link 'GameSalad.app'
end
