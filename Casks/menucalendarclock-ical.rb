cask :v1 => 'menucalendarclock-ical' do
  version '4.5.2'
  sha256 '7c78428fd22d0a3fa02e5df4c92fbb45dad881a7ba09205dc47c4bfaaf7f7f9e'

  url "http://www.objectpark.net/download/MenuCalendarClock-#{version}.dmg.gz"
  container :nested => "menucalendarclock-ical-#{version}"
  homepage 'http://www.objectpark.net/en/mcc.html'
  license :unknown    # todo: improve this machine-generated value

  app 'MenuCalendarClock iCal.app'
end
