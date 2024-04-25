cask "disk-drill" do
  version "5.4.1426"
  sha256 "516795feb032cb4e1bdf83b7df7d5ab5de25cb7943e859493b20f2b664a0ddf8"

  url "https://dl.cleverfiles.com/diskdrill-#{version.dots_to_hyphens}.dmg"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cleverfiles.diskdrill.sfl*",
    "~/Library/Application Support/DiskDrill",
    "~/Library/Caches/com.cleverfiles.Disk_Drill",
    "~/Library/Containers/com.cleverfiles.DiskDrill.Media/Data/cfbackd.chief",
    "~/Library/HTTPStorages/com.cleverfiles.DiskDrill.binarycookies",
    "~/Library/Logs/DiskDrill.log",
    "~/Library/Preferences/com.cleverfiles.activator.xml",
    "~/Library/Preferences/com.cleverfiles.Disk_Drill.plist",
    "~/Library/Preferences/com.cleverfiles.DiskDrill-setapp.plist",
    "~/Library/Preferences/com.cleverfiles.DiskDrill.plist",
  ]
end
