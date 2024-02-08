cask "elgato-control-center" do
  version "1.5.20289"
  sha256 "af12ee122b9247c89257e747765ab9d5cb3316a085e9e415ec7ba547c927fadf"

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
