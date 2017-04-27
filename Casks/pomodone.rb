cask 'pomodone' do
  version '1.5.994'
  sha256 'e65bfb455b25245422c5fbd4069a0e7770d52fde16d5cee1759c484d66ba95c7'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
