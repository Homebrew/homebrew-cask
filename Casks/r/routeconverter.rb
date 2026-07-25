cask "routeconverter" do
  arch arm: "aarch64", intel: "x64"

  version "3.5"
  sha256 arm:   "a11b491672d6524a86b5315ef6892b8d1a1573b16c23968be988ef0fd3c2f05c",
         intel: "3b4b80099a2e1c97f25a00d43070fa066d00af4fd5898237625cf1ebfe929da8"

  url "https://releases.routeconverter.com/previous-releases/#{version}/RouteConverterMac-#{arch}.app.zip"
  name "RouteConverter"
  desc "GPS tool to display, edit, enrich and convert routes, tracks and waypoints"
  homepage "https://www.routeconverter.com/"

  livecheck do
    url "https://releases.routeconverter.com/previous-releases/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on :macos

  app "RouteConverter.app"

  zap trash: "~/.routeconverter"
end
