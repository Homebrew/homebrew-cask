cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "9bbc215e6aa0e8719cac69a0235f17685214fd20a6771ce4cba91026679d0b49",
         intel: "c2ba24751f1915dee602a3d1ec6ecca447d5e30548b70009eee83ec974956513"

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
