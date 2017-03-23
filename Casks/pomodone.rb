cask 'pomodone' do
  version '1.5.989'
  sha256 '3a11f78fd7fa0bc1412791dcc2ef948f0385375c91e747e7ab40b5d273168649'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
