cask 'menucalendarclock-ical' do
  version '4.5.2'
  sha256 '7c78428fd22d0a3fa02e5df4c92fbb45dad881a7ba09205dc47c4bfaaf7f7f9e'

  url "http://www.objectpark.net/download/MenuCalendarClock-#{version}.dmg.gz"
  appcast 'http://www.objectpark.net/appcasts/MCC3.xml',
          :checkpoint => 'db8674825c2f0a3fd1e5ad98e1c32230a235e33a37a022f9ec032fae1f905e71'
  name 'MenuCalendarClock'
  homepage 'http://www.objectpark.net/en/mcc.html'
  license :freemium

  container :nested => "menucalendarclock-ical-#{version}"

  app 'MenuCalendarClock iCal.app'
end
