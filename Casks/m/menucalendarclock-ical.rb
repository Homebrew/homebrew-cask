cask "menucalendarclock-ical" do
  version "4.5.2"
  sha256 "7c78428fd22d0a3fa02e5df4c92fbb45dad881a7ba09205dc47c4bfaaf7f7f9e"

  url "http://www.objectpark.net/download/MenuCalendarClock-#{version}.dmg.gz"
  name "MenuCalendarClock"
  homepage "http://www.objectpark.net/en/mcc.html"

  livecheck do
    url "http://www.objectpark.net/appcasts/MCC3.xml"
    strategy :sparkle
  end

  app "MenuCalendarClock iCal.app"

  caveats do
    requires_rosetta
  end
end
