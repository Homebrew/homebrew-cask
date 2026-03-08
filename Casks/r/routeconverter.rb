cask "routeconverter" do
  version "3.3"
  sha256 "56c618af397e4ac3a42d060b012dbb7943f5d9c61baf0d2950fa4aff14ed22da"

  url "https://static.routeconverter.com/download/previous-releases/#{version}/RouteConverterMacOpenSource.app.zip"
  name "RouteConverter"
  desc "GPS tool to display, edit, enrich and convert routes, tracks and waypoints"
  homepage "https://www.routeconverter.com/"

  livecheck do
    url "https://static.routeconverter.com/download/previous-releases/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "RouteConverter.app"

  zap trash: "~/.routeconverter"

  caveats do
    requires_rosetta
  end
end
