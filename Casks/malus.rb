cask "malus" do
  version "1.9.0,190"
  sha256 "2a3b2f61cb23fa2ebea787b932e6c7897519014eb3fe0927cd23bfc8a052eadb"

  url "https://malus.s3cdn.net/uploads/Malus_mac_#{version.before_comma.dots_to_underscores}.dmg",
      verified: "malus.s3cdn.net/"
  appcast "https://api.getmalus.com/api/checkDesktopUpdate?type=mac"
  name "Malus"
  desc "Proxy to help accessing various online media resources/services"
  homepage "https://getmalus.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Malus.app"

  uninstall rmdir: "/Library/Application Support/Malus"

  zap trash: [
    "~/Library/Application Support/Malus",
    "~/Library/Application Support/com.getmalus.malus",
    "~/Library/Logs/com.getmalus.malus",
    "~/Library/Caches/com.getmalus.malus",
    "~/Library/Preferences/com.getmalus.malus.plist",
    "~/Library/Saved Application State/com.getmalus.malus.savedState",
  ]
end
