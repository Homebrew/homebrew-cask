cask 'pomodone' do
  version '1.5.1389'
  sha256 '94e93aaedf3c63a15d5f4cac5c4d83c4c5c382772acb778092adf184fafc5e1c'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
