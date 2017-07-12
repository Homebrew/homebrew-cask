cask 'pomodone' do
  version '1.5.1029'
  sha256 'e42d5b826b4cb3f25c06c7ef33ff3c063d6d8178643b2665668e8eb659e8d3f8'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
