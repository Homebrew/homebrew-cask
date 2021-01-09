cask "malus" do
  version "1.7.1,171"
  sha256 "377d7a40f9b2af2eef82c08d7826d0673a2c0ad7e6a01300e0c2c60bf9fbdf29"

  url "https://download.getmalus.com/uploads/Malus_#{version.before_comma.dots_to_underscores}.dmg"
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
