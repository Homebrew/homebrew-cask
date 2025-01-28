cask "elgato-control-center" do
  version "1.8.1,20582"
  sha256 "19000d486080d9caead1d53c9782598bebf61d4aee1fb20ffa75fd84ba55eab0"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.csv.first}/ElgatoControlCenter-#{version.csv.first}.#{version.csv.second}.zip"
  name "Elgato Control Center"
  desc "Control your Elgato key lights"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/control-center-update/feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Elgato Control Center.app"

  uninstall quit: "com.corsair.ControlCenter"

  zap trash: [
    "~/Library/Application Scripts/com.corsair.ControlCenterLauncher",
    "~/Library/Application Support/com.corsair.ControlCenter",
    "~/Library/Caches/com.corsair.ControlCenter",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.corsair.ControlCenter",
    "~/Library/Containers/com.corsair.ControlCenterLauncher",
    "~/Library/Preferences/com.corsair.ControlCenter.plist",
  ]
end
