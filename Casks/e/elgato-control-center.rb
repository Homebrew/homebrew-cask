cask "elgato-control-center" do
  version "1.7.20497"
  sha256 "83931b9b7c9796b16547bb6afa7d016ffe4098020cfc75845631b79bf69a572c"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.major_minor}/ElgatoControlCenter-#{version}.app.zip"
  name "Elgato Control Center"
  desc "Control your Elgato key lights"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/control-center-update/feed.xml"
    regex(/ElgatoControlCenter[._-]v?(\d+(?:\.\d+)+)\.app\.zip/i)
  end

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
