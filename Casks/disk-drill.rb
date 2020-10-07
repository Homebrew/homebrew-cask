cask "disk-drill" do
  version "4.0.123"
  sha256 "f0c162a959885be6bb8423f1343e18c571193f43fcb536f65adc77b5941e9761"

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast "https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml"
  name "Disk Drill"
  desc "Data recovery software"
  homepage "https://www.cleverfiles.com/"

  app "Disk Drill.app"

  uninstall delete: "/Library/Application Support/CleverFiles"

  zap trash: [
    "~/Library/Application Support/DiskDrill",
    "~/Library/Caches/com.cleverfiles.Disk_Drill",
    "~/Library/Logs/DiskDrill.log",
  ]
end
