cask "igdm" do
  version "3.0.2"
  sha256 "f9cb415544bec7d186ea6f52dd89f3d5e8326d5d6ef8338b4220492898a5f7aa"

  url "https://github.com/ifedapoolarewaju/igdm/releases/download/v#{version}/IGdm-#{version}.dmg",
      verified: "github.com/ifedapoolarewaju/igdm/"
  name "IG:dm"
  desc "Desktop application for Instagram DMs"
  homepage "https://igdm.me/"

  app "IGdm.app"

  uninstall quit: "com.ifedapoolarewaju.desktop.igdm"

  zap trash: [
    "~/Library/Application Support/IGdm",
    "~/Library/Logs/IGdm",
    "~/Library/Preferences/com.ifedapoolarewaju.desktop.igdm.helper.plist",
    "~/Library/Preferences/com.ifedapoolarewaju.desktop.igdm.plist",
    "~/Library/Saved Application State/com.ifedapoolarewaju.desktop.igdm.savedState",
  ]
end
