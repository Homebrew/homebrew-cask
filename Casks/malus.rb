cask "malus" do
  version "1.7.0,170"
  sha256 "27784468e5cf8b97da756a11fb403ce4a9c9da6ac8e667dc58520441a4dfc667"

  url "https://malus.s3cdn.net/uploads/malus_mac_#{version.before_comma.dots_to_underscores}.dmg",
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
