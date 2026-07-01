cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "97e8bbe8969368c906b80c26460e44fd9b7d441b0f9a94ec37e223def406d0ed",
         intel: "5eba6bb27e51fa4bd91a46d29619323e4d463b4b3f728235203e9683cd5e90f9"

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
