cask 'pomodone' do
  version '1.5.1475'
  sha256 'a612bac61942f3674c700d0531261e92356382dac7a22e283373f6c3b7d7a855'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
