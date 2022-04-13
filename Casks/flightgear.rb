cask "flightgear" do
  version "2020.3.13"
  sha256 "429a30909cf1e84288f8fea1158cc7cde0c9027d58ceef33f4b10fafee0ebd2c"

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
