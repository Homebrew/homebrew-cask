cask "flightgear" do
  version "2020.3.4"
  sha256 "cf70d77966956f218a477753e559f4111f05f2b0648822f38f30e6241810d0a2"

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
