cask "elgato-control-center" do
  version "1.9,20829"
  sha256 "0bb521ee9413ca48aa0fa85db07fd98f1301490bab9001d003a06960681fc0a1"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.csv.first}/ElgatoControlCenter-#{version.csv.first}.#{version.csv.second}.app.zip"
  name "Elgato Control Center"
  desc "Control your Elgato key lights"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/control-center-update/feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Elgato Control Center.app"

  uninstall quit: "com.corsair.ControlCenter"

  zap trash: [
    "~/Library/Application Scripts/com.corsair.ControlCenterLauncher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.corsair.controlcenter.sfl*",
    "~/Library/Application Support/com.corsair.ControlCenter",
    "~/Library/Application Support/Elgato Control Center",
    "~/Library/Caches/com.corsair.ControlCenter",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.corsair.ControlCenter",
    "~/Library/Containers/com.corsair.ControlCenterLauncher",
    "~/Library/HTTPStorages/com.corsair.ControlCenter",
    "~/Library/Preferences/com.corsair.ControlCenter.plist",
  ]
end
