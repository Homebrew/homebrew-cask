cask "routeconverter" do
  version "3.1"
  sha256 "1d9b18f8cb7d20e4276ccec6bf3ae793ff62deafe96489d9a33d2cfcd3d385f6"

  url "https://static.routeconverter.com/download/previous-releases/#{version}/RouteConverterMacOpenSource.app.zip"
  name "RouteConverter"
  desc "GPS tool to display, edit, enrich and convert routes, tracks and waypoints"
  homepage "https://www.routeconverter.com/"

  livecheck do
    url "https://static.routeconverter.com/download/previous-releases/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "RouteConverter.app"

  zap trash: "~/.routeconverter"

  caveats do
    requires_rosetta
  end
end
