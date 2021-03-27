cask "dropdmg" do
  version "3.6.2"
  sha256 "712993342832ccb9e4f1248f1d3574e65e58ecf8377141eef82bc21b9d868898"

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name "DropDMG"
  desc "Create DMGs and other archives"
  homepage "https://c-command.com/dropdmg/"

  livecheck do
    url "https://c-command.com/dropdmg/"
    strategy :page_match
    regex(%r{href=.*?/DropDMG-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "DropDMG.app"

  zap trash: [
    "~/Library/Application Support/DropDMG",
    "~/Library/Automator/DropDMG.action",
    "~/Library/Automator/Expand Disk Image.action",
    "~/Library/Caches/com.c-command.DropDMG",
    "~/Library/Preferences/com.c-command.DropDMG.plist",
  ]
end
