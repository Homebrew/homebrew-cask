cask "flightgear" do
  version "2018.3.6"
  sha256 "43b82f3319cdb2eb09b742a5988faa389a9a25cf0be2f0aa77430c573ca3482a"

  # sourceforge.net/project/flightgear/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/flightgear/release-#{version.major_minor}/FlightGear-#{version}.dmg"
  appcast "https://sourceforge.net/projects/flightgear/rss"
  name "FlightGear"
  homepage "https://www.flightgear.org/"

  app "FlightGear.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/fgfs*",
    "~/Library/Application Support/FlightGear",
  ]
end
