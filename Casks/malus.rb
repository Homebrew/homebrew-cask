cask "malus" do
  version "1.2.1"
  sha256 "5c01bd728530f0ac4981c663ad0c860f8e3e376262ba57e55f7dcef082cfcbe3"

  url "https://download.getmalus.com/uploads/malus_mac_#{version.dots_to_underscores}.dmg"
  appcast "https://api.getmalus.com/api/checkDesktopUpdate?type=mac"
  name "Malus"
  homepage "https://getmalus.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Malus.app"

  zap trash: [
    "/Library/Application Support/Malus",
    "~/Library/Application Support/Malus",
    "~/Library/Application Support/com.getmalus.malus",
    "~/Library/Logs/com.getmalus.malus",
    "~/Library/Caches/com.getmalus.malus",
    "~/Library/Preferences/com.getmalus.malus.plist",
    "~/Library/Saved Application State/com.getmalus.malus.savedState",
  ]
end
