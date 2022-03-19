cask "flightgear" do
  version "2020.3.12"
  sha256 "f731684c9c90228a9cb84ff3e0775a50cefde8c96011711fe3ab84a370689beb"

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
