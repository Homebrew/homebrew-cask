cask "flightgear" do
  version "2020.3.2"
  sha256 "f42f98805dd949719043cb05d0a3c2e650b97afab62478fe282d9150bbe5f84b"

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
