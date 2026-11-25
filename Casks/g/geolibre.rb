cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.1"
  sha256 arm:   "a07aa1aa9b12cbaba3d1dc2e1a6605dcdee22bc03e2004ebb76f85c71dd952fa",
         intel: "3b5e6b94719f63317b342f50ae0892f5f255a5628e36fc226e7b1fdd64b8feac"

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
