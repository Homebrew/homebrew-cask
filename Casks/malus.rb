cask "malus" do
  version "4.1.1"
  sha256 "2637992d2cad9bcb3ac67194e3efb7905bf38f57f3b5ea2108964b03bec7eb2e"

  url "https://download.getmalus.com/uploads/malus_mac_#{version.dots_to_underscores}.dmg"
  name "Malus"
  desc "Proxy to help accessing various online media resources/services"
  homepage "https://getmalus.com/"

  livecheck do
    url "https://api.getmalus.com/api/checkDesktopUpdate?type=mac"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Malus.app"

  uninstall rmdir: "/Library/Application Support/Malus"

  zap trash: [
    "~/Library/Application Support/com.getmalus.malus",
    "~/Library/Application Support/Malus",
    "~/Library/Caches/com.getmalus.malus",
    "~/Library/Logs/com.getmalus.malus",
    "~/Library/Preferences/com.getmalus.malus.plist",
    "~/Library/Saved Application State/com.getmalus.malus.savedState",
  ]
end
