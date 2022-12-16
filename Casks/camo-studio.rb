cask "camo-studio" do
  version "1.9.1,8495"
  sha256 "a14364c439779bcd881145476fba881198a8ce41183b47667f16d5db0af72c5b"

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
              "/Library/Application Support/Reincubate/Camo",
              "/Library/Audio/Plug-Ins/HAL/ReincubateCamoAudio.driver",
              "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin",
              "/Library/LaunchDaemons/com.reincubate.macos.cam.PrivilegedHelper.plist",
              "/Library/PrivilegedHelperTools/com.reincubate.macos.cam.PrivilegedHelper",
            ],
            rmdir:  "/Library/Application Support/Reincubate"

  zap trash: [
        "~/Library/Application Support/CrashReporter/Camo Studio",
        "~/Library/Application Support/Reincubate/Camo",
        "~/Library/Caches/SentryCrash/Camo Studio",
        "~/Library/Caches/com.reincubate.macos.cam",
        "~/Library/HTTPStorages/com.reincubate.macos.cam",
        "~/Library/Preferences/com.reincubate.macos.cam.plist",
        "~/Library/WebKit/com.reincubate.macos.cam",
      ],
      rmdir: "~/Library/Application Support/Reincubate"
end
