cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "514b796213973b04297d02ade45e9010d748ae7fb8c31a38881b87134447182d",
         intel: "18ab0f4374c28314ed911ffb8a1c1e91d67d1015c40555db92281d467e409248"

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
