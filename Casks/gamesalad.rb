cask 'gamesalad' do
  version '1.25.94'
  sha256 'cf59016c7c0d657e42c487d819a8ab936c38d550598fecabc9fb63f0a36d2faa'

  url "http://releases.gamesalad.com/creator/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
