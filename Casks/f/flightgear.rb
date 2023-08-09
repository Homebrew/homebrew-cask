cask "flightgear" do
  version "2020.3.18"
  sha256 "d95044660dfda41a300111244e7d5f8b1e11c8a99ad76cbbf22da83b99daf6a6"

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
