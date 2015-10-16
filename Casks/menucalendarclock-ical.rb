cask :v1 => 'menucalendarclock-ical' do
  version '4.5.2'
  sha256 '7c78428fd22d0a3fa02e5df4c92fbb45dad881a7ba09205dc47c4bfaaf7f7f9e'

  url "http://www.objectpark.net/download/MenuCalendarClock-#{version}.dmg.gz"
  container :nested => "menucalendarclock-ical-#{version}"
  name 'MenuCalendarClock'
  appcast 'http://www.objectpark.net/appcasts/MCC3.xml',
          :sha256 => 'd257aeaf7c2b2e59f845dedd8fa65e2fb715b7750211b66a5c471582ab9dcf67'
  homepage 'http://www.objectpark.net/en/mcc.html'
  license :freemium

  app 'MenuCalendarClock iCal.app'
end
