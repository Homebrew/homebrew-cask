cask 'gamesalad' do
  version '1.25.91'
  sha256 'bc602cbc3cdc684a465776dd82331fd373e626aef8124807a6e61b7a5668777c'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
