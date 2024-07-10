cask "flightgear" do
  version "2020.3.19"
  sha256 "8cfa99b69a05f19929b9380995076fa0129d7536c78d303a50b81a098b02f477"

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

  caveats do
    requires_rosetta
  end
end
