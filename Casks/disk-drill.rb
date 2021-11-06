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

  zap trash: [
    "~/Library/Application Support/DiskDrill",
    "~/Library/Caches/com.cleverfiles.Disk_Drill",
    "~/Library/Logs/DiskDrill.log",
  ]
end
