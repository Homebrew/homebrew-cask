cask "malus" do
  version "1.4.1"
  sha256 "21c59214faea9874beca2ff592e771e5f4de13f1a3f396fec67ec2acbc590275"

  # malus.s3cdn.net was verified as official when first introduced to the cask
  url "https://malus.s3cdn.net/uploads/Malus-mac150.dmg"
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
