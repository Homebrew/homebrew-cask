cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "edc7155b37bb149f30f01c76c37eff14964628976d875102865be5d1ef3b7102",
         intel: "8c44b4c22b1d5ce526cd06621b7161140b7f4ebb8134df4a91b33958f103b363"

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
