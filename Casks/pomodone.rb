cask 'pomodone' do
  version '1.5.893'
  sha256 'b9c7fe14f11b4681973f51bbf3e8dfd7e8245078805b0701c30ce6b662fb9db1'

  url "https://app.pomodoneapp.com/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
