cask "malus" do
  version "3.0.3"
  sha256 "54d1b34d5574ae18f8dc94bf88697c751e224824f96cbfe05ab55f4d58d8a945"

  url "https://download.getmalus.com/uploads/Malus_#{version.dots_to_underscores}.dmg"
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
