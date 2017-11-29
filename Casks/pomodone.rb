cask 'pomodone' do
  version '1.5.1190'
  sha256 '529de40429a02589dd699d257393076b1e854801225b2600966e442594da801f'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
