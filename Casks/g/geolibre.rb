cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "6d6f7344ba755dbdfb01b4e608f763f87d609bba8caf9a91306651f574ea0ba3",
         intel: "0aa3c4dd5043f4e18f3e2065e177ec48c343115b3fda038b40064312f786b9c3"

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
