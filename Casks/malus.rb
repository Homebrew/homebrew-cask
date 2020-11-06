cask "malus" do
  version "1.5.0"
  sha256 "0aa09ca35933a4783f735e2c8dc9dbd10a8d692b0be3ccf547e7713376324bc3"

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
