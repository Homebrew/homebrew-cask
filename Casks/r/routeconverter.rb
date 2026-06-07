cask "routeconverter" do
  version "3.4"
  sha256 "33459efd3381b1baddf1c45d6f44ab907c0727345dd32e51511120d601681227"

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
  depends_on :macos

  app "RouteConverter.app"

  zap trash: "~/.routeconverter"

  caveats do
    requires_rosetta
  end
end
