cask 'pomodone' do
  version '1.5.1523'
  sha256 '729d7aa3b392e605d1dae46aec789d28d7f1af51197182e022900cfd46278ff5'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  appcast 'https://pomodoneapp.com/download-pomodone-app.html'
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
