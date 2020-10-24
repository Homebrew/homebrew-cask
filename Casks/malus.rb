cask "malus" do
  version "1.4.1"
  sha256 "31c2ce3fb49b0325b1ad230a6667732300cd4cf174ced4707aad6dde58dfd8c6"

  # malus.s3cdn.net was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-mac-#{version.no_dots}.dmg"
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
