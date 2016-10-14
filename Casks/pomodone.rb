cask 'pomodone' do
  version '1.5.806'
  sha256 '0e934efef2f9832ff27616153c1d61962f321c16912794271c49ef5672f8516c'

  url "https://app.pomodoneapp.com/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDone.app'
end
