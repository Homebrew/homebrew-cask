cask "dropdmg" do
  version "3.6.5"
  sha256 "43f871e4e597e5adde5cc3733cbaf975f42c8cb3ac83127666fdf139bc9cf331"

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
