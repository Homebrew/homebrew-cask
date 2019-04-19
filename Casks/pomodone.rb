cask 'pomodone' do
  version '1.5.1534'
  sha256 '37af8a92942e357e7d7ede47e1f85adc06d436712ea792eb23d8e089c1baf292'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  appcast 'https://pomodoneapp.com/download-pomodone-app.html'
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
