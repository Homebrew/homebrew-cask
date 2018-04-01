cask 'pomodone' do
  version '1.5.1227'
  sha256 '079c3ddde0c117b10a5f434d66baa4bdc5bbb9a1f2fbb707ac2aa2dae9d24cd2'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
