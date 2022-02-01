cask "routeconverter" do
  version "2.30.324"
  sha256 :no_check

  url "https://static.routeconverter.com/download/RouteConverterMac.app.zip"
  name "RouteConverter"
  desc "GPS tool to display, edit, enrich and convert routes, tracks and waypoints"
  homepage "https://www.routeconverter.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "RouteConverterMac.app"
end
