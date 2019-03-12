cask 'pomodone' do
  version '1.5.1527'
  sha256 '66a1f74b77b4d71227e6bfab953ccd5b90b70720965460de1b62c22de59124c7'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  appcast 'https://pomodoneapp.com/download-pomodone-app.html'
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
