cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "33ea078a52b3b0f9de1068ee489d415e33f6c3a5162422557682ffd8294ac189",
         intel: "53ae9ef71859a5af370b81e7c6dcad7d5f4bd7878879019f1bb0875aca6c62aa"

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
