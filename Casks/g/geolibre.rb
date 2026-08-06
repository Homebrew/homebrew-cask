cask "geolibre" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "cb1fd009f553b6dd0cc663597d71f312f43be85ef6a43446437575fc5860a1c8",
         intel: "8e016ac75b9ec8f267af9980a8e7185ad23d77490b0b8b120c4204e45babb56b"

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
