cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "65bd8467c07fbda11d19a1590901637faf9f48aa7131d88aa10e738fc961b66d",
         intel: "151eabd8e30a1186bf3870ddb1f91d4307438bf55aa8e2aff3f0e1dbf6e37648"

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
