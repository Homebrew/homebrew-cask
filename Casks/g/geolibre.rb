cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "9ef411d48f700af7bb579ca48dc11d5fef35df9cccc3307821dacdd15e091456",
         intel: "926fa925f26996a7301eb0cb4cabaf44f80cb8e795b412faaf84a9387ae98642"

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
