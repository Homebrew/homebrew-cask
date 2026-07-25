cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "bf54106888d233af202f767112c0da858283ac6c456aeae3d20f15b4dee7ea4e",
         intel: "6ba7df4e6accc5a00eba0fe6b28c470c301a433f584b46efbd27d0592de3bb7e"

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
