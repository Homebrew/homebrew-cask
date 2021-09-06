cask "disk-drill" do
  version "4.4.356"
  sha256 "2f6c8be2c7803746723fbabf4fcd2b2976fea4db1cbd6405efa7ba24e32fbff1"

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
