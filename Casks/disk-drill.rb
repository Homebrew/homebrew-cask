cask "disk-drill" do
  version "4.3.314"
  sha256 "9c36ed4fbcd3a3bc41aaaf21d6ae7155010983d3c9abf972ddfad9dcd5e9805f"

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.dmg"
  name "Disk Drill"
  desc "Data recovery software"
  homepage "https://www.cleverfiles.com/"

  livecheck do
    url "https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml"
    strategy :sparkle
  end

  app "Disk Drill.app"

  uninstall delete: "/Library/Application Support/CleverFiles"

  zap trash: [
    "~/Library/Application Support/DiskDrill",
    "~/Library/Caches/com.cleverfiles.Disk_Drill",
    "~/Library/Logs/DiskDrill.log",
  ]
end
