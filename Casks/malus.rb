cask "malus" do
  version "1.5.1"
  sha256 "d0ef9cf07310b5428b63f0a5b9384c247e7714cf6c60c9bc89fc410ec9c17287"

  # malus.s3cdn.net was verified as official when first introduced to the cask
  url "https://getmalus.com/download-start?mac=1&dlu=/r/mac"
  appcast "https://api.getmalus.com/api/checkDesktopUpdate?type=mac"
  name "Malus"
  desc "Proxy to help accessing various online media resources/services"
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
