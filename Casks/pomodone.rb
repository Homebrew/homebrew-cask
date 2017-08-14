cask 'pomodone' do
  version '1.5.1084'
  sha256 '3056bc55c5c84eb37241a59ee09503c9c66de4206e09bba35c465637a2c205ea'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
