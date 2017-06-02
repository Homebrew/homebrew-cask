cask 'pomodone' do
  version '1.5.1008'
  sha256 '46f0d9b1054e1370c6626ecb1bacf3b2fffda92a4eda0319e62c7f597565732c'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
