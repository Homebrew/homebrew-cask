cask 'pomodone' do
  version '1.5.856'
  sha256 '4a51bf6f5b17493545d355101c2407e6b76be40a744a142d330c666636f7ee39'

  url "https://app.pomodoneapp.com/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
