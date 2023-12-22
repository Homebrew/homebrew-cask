cask "disk-drill" do
  version "5.4.1425"
  sha256 :no_check

  url "https://dl.cleverfiles.com/diskdrill.dmg"
  name "Disk Drill"
  desc "Data recovery software"
  homepage "https://www.cleverfiles.com/"

  livecheck do
    url "https://www.cleverfiles.com/releases/auto-update/dd-newestr.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Disk Drill.app"

  uninstall script: {
    executable: "#{staged_path}/Disk Drill.app/Contents/Resources/uninstall",
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cleverfiles.diskdrill.sfl2",
    "~/Library/Application Support/DiskDrill",
    "~/Library/Caches/com.cleverfiles.Disk_Drill",
    "~/Library/Containers/com.cleverfiles.DiskDrill.Media/Data/cfbackd.chief",
    "~/Library/HTTPStorages/com.cleverfiles.DiskDrill.binarycookies",
    "~/Library/Logs/DiskDrill.log",
    "~/Library/Preferences/com.cleverfiles.activator.xml",
    "~/Library/Preferences/com.cleverfiles.Disk_Drill.plist",
    "~/Library/Preferences/com.cleverfiles.DiskDrill.plist",
    "~/Library/Preferences/com.cleverfiles.DiskDrill-setapp.plist",
  ]
end
