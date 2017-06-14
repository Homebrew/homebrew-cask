cask 'pomodone' do
  version '1.5.1020'
  sha256 '36c451e1e0a7d3f66e691522baecda1ee0b4ed53007b6b2a6ef61a968d2fa55d'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
