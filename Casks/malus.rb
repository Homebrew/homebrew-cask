cask "malus" do
  version "1.1.1,1.0.1"
  sha256 "2a9998cbe5c4b291e627a5c8c7b3e7a853e6a87e60128679675de802cb9c6e5b"

  # malus.s3cdn.net/ was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-#{version.after_comma.dots_to_underscores}.dmg"
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
