cask "flightgear" do
  version "2020.3.5"
  sha256 "aecdfe86d16b8b41c1f2faf730072c6925c481b3a7d07b079d88ac5499766926"

  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg",
      verified: "sourceforge.net/flightgear/"
  appcast "https://sourceforge.net/projects/flightgear/rss"
  name "FlightGear"
  homepage "https://www.flightgear.org/"

  app "FlightGear.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/fgfs*",
    "~/Library/Application Support/FlightGear",
  ]
end
