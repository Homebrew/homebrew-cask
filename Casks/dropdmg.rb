cask "dropdmg" do
  version "3.6"
  sha256 "2db89ef59934074cd3f4011ec7da987a4157567aea0cb928dc6a8c341791a50e"

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  appcast "https://c-command.com/dropdmg/"
  name "DropDMG"
  desc "Tool to create system disk images and cross-platform archives"
  homepage "https://c-command.com/dropdmg/"

  app "DropDMG.app"

  zap trash: [
    "~/Library/Application Support/DropDMG",
    "~/Library/Automator/DropDMG.action",
    "~/Library/Automator/Expand Disk Image.action",
    "~/Library/Caches/com.c-command.DropDMG",
    "~/Library/Preferences/com.c-command.DropDMG.plist",
  ]
end
