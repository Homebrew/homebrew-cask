cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "0b86195e007284af3606e5bc92322e18447e4143ee09c0fb6b0bc1c51154ba73",
         intel: "c77e47081cb352bebd1f64c43eb9fa0c44a75a9bea5f8356b6eed503d9eb7785"

  url "https://github.com/opengeos/GeoLibre/releases/download/v#{version}/GeoLibre.Desktop_#{version}_#{arch}.dmg",
      verified: "github.com/opengeos/GeoLibre/"
  name "GeoLibre Desktop"
  desc "GIS platform"
  homepage "https://geolibre.app/"

  depends_on macos: :catalina

  app "GeoLibre Desktop.app"

  zap trash: [
    "~/Library/Application Support/org.geolibre.desktop",
    "~/Library/Caches/org.geolibre.desktop",
    "~/Library/Preferences/org.geolibre.desktop.plist",
    "~/Library/Saved Application State/org.geolibre.desktop.savedState",
    "~/Library/WebKit/org.geolibre.desktop",
  ]
end
