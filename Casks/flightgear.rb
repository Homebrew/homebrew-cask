cask "flightgear" do
  version "2020.3.3"
  sha256 "9a925ce6f0aac7d1e1ffe455603ebc1b42d52ba266c8fac1f9e5ff23a66280d1"

  # sourceforge.net/flightgear/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast "https://sourceforge.net/projects/flightgear/rss"
  name "FlightGear"
  homepage "https://www.flightgear.org/"

  app "FlightGear.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/fgfs*",
    "~/Library/Application Support/FlightGear",
  ]
end
