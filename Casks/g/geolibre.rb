cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "6e0718bb765a8876a17e8dd4359c2c1be847864c37984d4eb2216e745c80b2fc",
         intel: "47045c697f89d11e27a534dcd662f170ca70456326c28b5381ac4ad2c829ec0e"

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
