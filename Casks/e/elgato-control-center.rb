cask "elgato-control-center" do
  version "1.9.1,21030"
  sha256 "ab95a395a257c87fecb23d509a4a66934189df6418af4ea2edeba6665e433acf"

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
