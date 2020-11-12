cask "malus" do
  version "1.5.2"
  sha256 "dfca2126b338fc5836b9abba87860922b23455712a15bb854aa604aedf3d4efd"

  # malus.s3cdn.net/ was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-mac-#{version.no_dots}.dmg"
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
