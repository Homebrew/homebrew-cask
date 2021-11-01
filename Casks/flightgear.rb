cask "flightgear" do
  version "2020.3.11"
  sha256 "f6a04a20c9d5e45ec9e97a2cf506db477f186bac2693e051ede4e924cb0c517d"

  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg",
      verified: "sourceforge.net/flightgear/"
  name "FlightGear"
  desc "Flight simulator"
  homepage "https://www.flightgear.org/"

  livecheck do
    url "https://www.flightgear.org/download/"
    regex(/FlightGear[._-]?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "FlightGear.app"

  zap trash: "~/Library/Application Support/FlightGear"
end
