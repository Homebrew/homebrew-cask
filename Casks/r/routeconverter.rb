cask "routeconverter" do
  version "3.0.379"
  sha256 :no_check

  url "https://static.routeconverter.com/download/RouteConverterMac.app.zip"
  name "RouteConverter"
  desc "GPS tool to display, edit, enrich and convert routes, tracks and waypoints"
  homepage "https://www.routeconverter.com/"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.filter_map(&:short_version).first
    end
  end

  auto_updates true

  app "RouteConverter.app"

  zap trash: "~/.routeconverter"
end
