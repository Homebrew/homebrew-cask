cask "elgato-control-center" do
  version "1.6.20479"
  sha256 "ae96c677d296a944f4de42c0892867e328d1d9643de2b9d6f1009e63655db7c6"

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
