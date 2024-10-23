cask "elgato-control-center" do
  version "1.7.2,20533"
  sha256 "b2f63696d6002c75227319484f35a05c95da18fa5b6b069029a080879f3fdac3"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.csv.first}/ElgatoControlCenter-#{version.csv.first}.#{version.csv.second}.app.zip"
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
