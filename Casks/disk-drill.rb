cask "disk-drill" do
  version "3.8.977"
  sha256 "c87f1d7d016d950396e328fafa237ea4aff5c6cbd2bd62e091c43750f6e0976a"

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
