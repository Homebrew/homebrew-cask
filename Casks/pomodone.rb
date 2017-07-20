cask 'pomodone' do
  version '1.5.1032'
  sha256 'a331709d0c1e43db725832a6d9ab87cabca22aa52c273ce8e9e327d8bf1d22e6'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
