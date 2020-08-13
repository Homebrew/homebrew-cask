cask "flightgear" do
  version "2018.3.6"
  sha256 "cfc8667d68f2a08323f1abfa172e6a7bcbf465fa4f00a6576309066332974306"

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
