cask "igdm" do
  version "3.0.3"
  sha256 "ac4363101412ab3eac197cedaa89b5c41c05ab4ec660857853d3b66200891295"

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
