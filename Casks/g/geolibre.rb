cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.11.0"
  sha256 arm:   "858a2e0b630ee2946a462255d0e713ffa37f4fae3111c3342b444482c66ac417",
         intel: "6f3ad22c468ffae466b172b7f78d35916eca66234e1d4ad037a84fe40bc1c23a"

  url "https://github.com/opengeos/GeoLibre/releases/download/v#{version}/GeoLibre.Desktop_#{version}_#{arch}.dmg"
  name "GeoLibre Desktop"
  desc "GIS platform"
  homepage "https://geolibre.app/"

  depends_on :macos

  app "GeoLibre Desktop.app"

  zap trash: [
    "~/Library/Application Support/org.geolibre.desktop",
    "~/Library/Caches/org.geolibre.desktop",
    "~/Library/Preferences/org.geolibre.desktop.plist",
    "~/Library/Saved Application State/org.geolibre.desktop.savedState",
    "~/Library/WebKit/org.geolibre.desktop",
  ]
end
