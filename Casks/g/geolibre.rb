cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "4bbdf0ff39f01ee6942db1f52cfd9d0a2c0c14238e5a20d82c445a070bf1784a",
         intel: "a76baae817a37c0cffa90011e4979fdb4756587ed99b5617842e3e5972b4dc2d"

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
