cask 'pomodone' do
  version '1.5.1456'
  sha256 'd99db6704b87080ae4588e4880fee2f6426bbda9cbc72087d57e5583c8165a0f'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
