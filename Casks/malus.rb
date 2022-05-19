cask "malus" do
  version "4.1.0"
  sha256 "8be273d852f55d17f3eaa239c5124b740c0d9c43614eed81414d4554198b9fd4"

  url "https://download.getmalus.com/uploads/malus_macos_#{version.dots_to_underscores}.dmg"
  name "Malus"
  desc "Proxy to help accessing various online media resources/services"
  homepage "https://getmalus.com/"

  livecheck do
    url "https://api.getmalus.com/api/checkDesktopUpdate?type=mac"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Malus.app"

  uninstall rmdir: "/Library/Application Support/Malus"

  zap trash: [
    "~/Library/Application Support/com.getmalus.malus",
    "~/Library/Application Support/Malus",
    "~/Library/Caches/com.getmalus.malus",
    "~/Library/Logs/com.getmalus.malus",
    "~/Library/Preferences/com.getmalus.malus.plist",
    "~/Library/Saved Application State/com.getmalus.malus.savedState",
  ]
end
