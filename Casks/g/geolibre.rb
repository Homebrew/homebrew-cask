cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.1"
  sha256 arm:   "3fd0266e443902b5afd9cc527ffdfd688c936acbf60a30f41c88f7d9f17d6726",
         intel: "982c94d8edd7cd7901459af988264d88325786652c90eb5136c16ce4720c16b9"

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
