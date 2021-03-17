cask "malus" do
  version "1.7.6,176"
  sha256 "b3cdf4bae6a5f67b66d6cd03e9cb98f6449384f54cd810cceac966f6cdece202"

  url "https://malus.s3cdn.net/uploads/Malus_#{version.before_comma.dots_to_underscores}.dmg",
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
