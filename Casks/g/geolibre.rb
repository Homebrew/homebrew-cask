cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "5b44b0e0e4dd05fc4a93d0bdb5971dea0ed700b16e4bf172ce59cbe4b8b909e5",
         intel: "3e85b842661a2f5591668d0ee71b9b3e0b2e1233a972d8b3d05c6738d7867afc"

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
