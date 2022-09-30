cask "flightgear" do
  version "2020.3.14"
  sha256 "5315c37c056fe886dc93cda432a2e74352b2db1a6477851bcee0475b57a1d57e"

  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg",
      verified: "sourceforge.net/flightgear/"
  name "FlightGear"
  desc "Flight simulator"
  homepage "https://www.flightgear.org/"

  livecheck do
    url "https://www.flightgear.org/download/"
    regex(/FlightGear[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "FlightGear.app"

  zap trash: "~/Library/Application Support/FlightGear"
end
