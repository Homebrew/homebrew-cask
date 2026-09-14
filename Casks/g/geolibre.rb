cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "a44dbe559ecb181baee6ab471c7795eb0f0ba085cac2f0d8e19e208595c42606",
         intel: "83f5d6c89f30dcd906324e6cb4fa09bfedce55e6eda1a8ec66717182a9a34cad"

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
