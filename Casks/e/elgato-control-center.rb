cask "elgato-control-center" do
  version "1.9.2,21032"
  sha256 "77d332b5c04ced0843b05c2981a6988b25b22d047ed0e8ce52614c5c8479cd23"

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

  app "ControlCenter.app"

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
