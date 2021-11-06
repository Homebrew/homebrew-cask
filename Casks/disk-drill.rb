cask "disk-drill" do
  version "4.6.370"
  sha256 :no_check

  url "https://dl.cleverfiles.com/diskdrill.dmg"
  name "Disk Drill"
  desc "Data recovery software"
  homepage "https://www.cleverfiles.com/"

  livecheck do
    url "https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml"
    strategy :sparkle
  end

  app "Disk Drill.app"

  uninstall script: {
    executable: "#{staged_path}/Disk Drill.app/Contents/Resources/uninstall",
    sudo:       true,
  }

  zap script:    {
    executable: "defaults",
    args:       [
      "delete com.cleverfiles.Disk_Drill",
      "delete com.cleverfiles.DiskDrill",
      "delete com.cleverfiles.DiskDrill-setapp",
    ],
  },
      launchctl: "com.cleverfiles.cfbackd",
      kext:      [
        "com.cleverfiles.SecureDisk",
        "com.cleverfiles.SecureDisk-11",
      ],
      quit:      [
        "com.cleverfiles.DiskDrill",
        "com.cleverfiles.DiskDrill.SmartDaemon",
        "com.cleverfiles.cfbackd",
      ],
      signal:    [
        ["KILL", "com.cleverfiles.DiskDrill"],
      ],
      trash:     [
        "~/Library/Application Support/DiskDrill",
        "~/Library/Caches/com.cleverfiles.Disk_Drill",
        "~/Library/Logs/DiskDrill.log",
        "~/Library/Preferences/com.cleverfiles.Disk_Drill.plist",
        "~/Library/Preferences/com.cleverfiles.DiskDrill.plist",
        "~/Library/Preferences/com.cleverfiles.DiskDrill-setapp.plist",
        "~/Library/Containers/com.cleverfiles.DiskDrill.Media/Data/cfbackd.chief",
        "/Library/Logs/CleverFiles",
        "/Library/Application Support/CleverFiles",
        "/Library/Preferences/com.cleverfiles.cfbackd.plist",
        "/Library/Caches/CleverFiles",
        "/Library/LaunchDaemons/com.cleverfiles.cfbackd.plist",
      ]
end
