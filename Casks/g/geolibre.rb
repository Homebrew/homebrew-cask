cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "b9c5ba1ca89291ed7d6cf739abe3693a0a8e7a036ba0f77826511d02f04ccf20",
         intel: "8ce72ad5e0feccfdfed22ca4112d11fcda4e72dd7c616eb179c699be5d502e86"

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
