cask 'pomodone' do
  version '1.5.1163'
  sha256 '476d22afec5932be416792e4ced8d8b7407607ccaf0efaef2329efd513785a36'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
