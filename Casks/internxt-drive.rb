cask "internxt-drive" do
  version "1.2.7"
  sha256 :no_check

  url "https://internxt.com/downloads/drive.dmg"
  name "Internxt Drive"
  desc "End-to-end encrypted, free, open source cloud storage"
  homepage "https://internxt.com/drive"

  auto_updates true

  app "Internxt Drive.app"

  zap trash: [
    "~/.internxt-desktop",
    "~/Library/Application Support/internxt-drive",
    "~/Library/Logs/Internxt Drive",
    "~/Library/Logs/internxt-drive",
    "~/Library/Preferences/com.internxt.drive.plist",
  ]
end
