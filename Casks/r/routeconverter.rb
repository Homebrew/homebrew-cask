cask "routeconverter" do
  version "3.2"
  sha256 "a66cb0205faa4dd57042bae6494c87da5bb4078f1a2cc7316e4e40b8acbc72be"

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
