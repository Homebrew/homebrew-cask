cask "disk-drill" do
  version "4.0.130"
  sha256 "a12785ca44bdd172aaa2f1efccedfbc65c90864f2672d739f6d6903908bb3c3f"

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.dmg"
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
