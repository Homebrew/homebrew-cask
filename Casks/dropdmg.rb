cask "dropdmg" do
  version "3.6.1"
  sha256 "bc551a79ae30068e61eba0a5364029fb3e7e48fb6bfa41f07e923a8c0919e481"

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
