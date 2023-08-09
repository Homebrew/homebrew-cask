cask "dropdmg" do
  version "3.6.6"
  sha256 "efedd81e5dba0538647234a8eeda8d9fef223a7991cc0e5a93f076dd2ea520fd"

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name "DropDMG"
  desc "Create DMGs and other archives"
  homepage "https://c-command.com/dropdmg/"

  livecheck do
    url :homepage
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
