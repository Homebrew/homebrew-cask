cask 'gamesalad' do
  version '1.25.87'
  sha256 '849c7f97db772e03fec1b1adb69cf7fd7b08e4c0542caddc27b613db029576b8'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: '8898dc1aa86016b6b8e8688ab24f3ad50d9f202c9c21e5efb6cbce8af6aed4ef'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
