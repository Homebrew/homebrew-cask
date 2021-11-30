cask "malus" do
  version "3.0.0"
  sha256 "8cae0a7abdbf207741d21f7a9937fe87dfc9a1798c9c29c34098eacef8358eda"

  url "https://download.getmalus.com/uploads/malus-mac-#{version.dots_to_underscores}.dmg"
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
    "~/Library/Application Support/Malus",
    "~/Library/Application Support/com.getmalus.malus",
    "~/Library/Logs/com.getmalus.malus",
    "~/Library/Caches/com.getmalus.malus",
    "~/Library/Preferences/com.getmalus.malus.plist",
    "~/Library/Saved Application State/com.getmalus.malus.savedState",
  ]
end
