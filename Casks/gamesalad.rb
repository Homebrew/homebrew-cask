cask 'gamesalad' do
  version '1.25.92'
  sha256 '96850480f00df0ed2f5ec0775d8f676c7c26f2da43868a118bfab7b869aa9994'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
