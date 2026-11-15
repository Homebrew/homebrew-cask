cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "04159c51f5f0889a72e39d92f248e04937089e4a39978d989da30a5085ed73bc",
         intel: "afee3be82fc3ebf9377d9e1a8d846bcb6add5ee18ea6883bc3e1766c29d59030"

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
