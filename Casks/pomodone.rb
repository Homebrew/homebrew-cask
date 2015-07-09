cask :v1 => 'pomodone' do
  version :latest
  sha256 :no_check

  url 'http://app.pomodoneapp.com/PomoDone.dmg'
  name 'PomoDone'
  homepage 'http://pomodoneapp.com/'
  license :gratis

  app 'PomoDone.app'
end
