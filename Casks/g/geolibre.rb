cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "6378d04ad09d26991fb42c17653116364d6364d3826f0a2eb8427930f3cce6ad",
         intel: "c98ef9021cdf6ee454dcc76122845b7a966591bce6de368dc83806c79c6786c7"

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
