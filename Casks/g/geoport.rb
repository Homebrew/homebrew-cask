cask "geoport" do
  arch arm: "arm", intel: "x86"

  version "4.0.2"
  sha256 arm:   "f27ffd28d9c8cfd0afa56190cd67e6aa4b9a119b1903cedea25c8111a8e9cded",
         intel: "60dcbf6c4ac02bd2661546229ad6ef981f2608890a9f8eabc4c153fb35d58887"

  url "https://github.com/davesc63/GeoPort/releases/download/v#{version}/GeoPort-#{arch}-v#{version}.dmg",
      verified: "github.com/davesc63/GeoPort/"
  name "GeoPort"
  desc "iOS location simulator: spoof your location, test apps, and more"
  homepage "https://github.com/davesc63/GeoPort"

  app "GeoPort-mac.app"

  zap trash: [
    "~/Library/Application Support/GeoPort",
    "~/Library/Preferences/com.geoport.GeoPort.plist",
  ]
end
