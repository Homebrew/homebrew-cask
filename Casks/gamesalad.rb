cask 'gamesalad' do
  version '1.25.95'
  sha256 '34bab595e1d7eb7e249f844fe76a38930d7747403f1772672a25dddd06de5914'

  url "https://releases.gamesalad.com/creator/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
