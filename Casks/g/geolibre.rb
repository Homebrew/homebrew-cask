cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "16e92a2ae20de6c0550cb454c19355214c3592765fcce3fec3cd67b9af759f17",
         intel: "186cb613021f5315d4387df1b21cb1759131299a6323542ac2e7569256fc4bb1"

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
