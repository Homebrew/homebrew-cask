cask 'alarm-clock' do
  version '2.4.5'
  sha256 '285d277572be83c632c696d565a8413c2d5149a460392177e9e1b601ffce8778'

  url "https://wayback.archive.org/web/20130123192255/http://www.robbiehanson.com/alarmclock/downloads/Alarm%20Clock%20(#{version}).dmg"
  name 'Alarm Clock'
  homepage 'https://wayback.archive.org/web/20130123192255/http://www.robbiehanson.com/alarmclock/'

  app 'Alarm Clock.app'
end
