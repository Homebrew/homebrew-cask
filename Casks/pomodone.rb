cask 'pomodone' do
  version '1.5.1479'
  sha256 '053d3bfee09fa7606725314d1a56500e5da5d83450ce64906aed1a5335b8bdd1'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
