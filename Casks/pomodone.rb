cask 'pomodone' do
  version '1.5.1126'
  sha256 'd9f3131a2a7172b9842672acb36d694f7c552b3be75488f539169f29763f933d'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
