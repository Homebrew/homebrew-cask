cask "dropdmg" do
  version "3.6.3"
  sha256 "529b78a507dcc5a35e425a35d6cc3b2bad3115db8abbd63e918bf92a47440557"

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name "DropDMG"
  desc "Create DMGs and other archives"
  homepage "https://c-command.com/dropdmg/"

  livecheck do
    url "https://c-command.com/dropdmg/"
    regex(%r{href=.*?/DropDMG[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
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
