cask 'pomodone' do
  version '1.5.1529'
  sha256 '92f8920226dc5fe1ef85b6875c120c535991e88346f0f3f48a65bfd0d84afc1a'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  appcast 'https://pomodoneapp.com/download-pomodone-app.html'
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
