cask :v1 => 'alarm-clock' do
  version '2.4.5'
  sha256 '285d277572be83c632c696d565a8413c2d5149a460392177e9e1b601ffce8778'

  url "http://wayback.archive.org/web/20130123192255/http://www.robbiehanson.com/alarmclock/downloads/Alarm%20Clock%20(#{version}).dmg"
  homepage 'http://wayback.archive.org/web/20130123192255/http://www.robbiehanson.com/alarmclock/index.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Alarm Clock.app'
end
