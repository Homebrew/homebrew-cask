cask "camo-studio" do
  version "2.5.0,18345"
  sha256 "511c8e53d1d001089ba02fd9ac7be4203575c875cbb584f50029d266d5622a8e"

  url "https://releases.reincubate.com/camo/camo-macos-#{version.csv.first}.#{version.csv.second}.zip"
  name "Camo Studio"
  desc "Use your phone as a high-quality webcam with image tuning controls"
  homepage "https://reincubate.com/camo/"

  livecheck do
    url "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
        "~/Library/Caches/com.reincubate.macos.cam",
        "~/Library/Caches/SentryCrash/Camo Studio",
        "~/Library/HTTPStorages/com.reincubate.macos.cam",
        "~/Library/Preferences/com.reincubate.macos.cam.plist",
        "~/Library/WebKit/com.reincubate.macos.cam",
      ],
      rmdir: "~/Library/Application Support/Reincubate"
end
