cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "d81a121bfa8b2543f41ece0d6cd1c1589bd1939357388c83dcbe085fb3dac641",
         intel: "5f1f814ac396b954b962440b742e838feab6a04d6753e0ee95b7aaf0afee04d8"

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
