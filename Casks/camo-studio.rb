cask "camo-studio" do
  version "1.6.4,7298"
  sha256 "2985d9ac143a965ccb69755a78e8efd80dae44ce7424fa23ba86649ce333cdda"

  url "https://reincubate.com/res/labs/camo/CamoStudioMac-#{version.csv.first}-#{version.csv.second}-Release.app.zip"
  name "Camo Studio"
  desc "Use your phone as a high-quality webcam with image tuning controls"
  homepage "https://reincubate.com/camo/"

  livecheck do
    url "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camo Studio.app"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/HAL/ReincubateCamoAudio.driver",
    "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin",
  ]

  zap trash: [
    "~/Library/Application Support/Reincubate/Camo",
    "~/Library/Caches/SentryCrash/Camo Studio",
    "~/Library/Caches/com.reincubate.macos.cam",
    "~/Library/HTTPStorages/com.reincubate.macos.cam",
    "~/Library/Preferences/com.reincubate.macos.cam.plist",
    "~/Library/WebKit/com.reincubate.macos.cam",
  ],
      rmdir: "~/Library/Application Support/Reincubate"
end
