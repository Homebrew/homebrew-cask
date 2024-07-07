cask "routeconverter" do
  version "3.0"
  sha256 "308d86626c30d24456dbca433610d0785ab946990d46f84756121b21f4961cb2"

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
