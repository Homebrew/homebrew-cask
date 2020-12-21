cask "disk-drill" do
  version "4.1.206"
  sha256 "b3e8da04d756147ced34ffda0417e90fce290df65494fe3b5371ac0258abf0e6"

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
