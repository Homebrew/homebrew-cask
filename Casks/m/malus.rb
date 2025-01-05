cask "malus" do
  version "5.0.1"
  sha256 "44214970721df28f482a0ccde1d325addde7a1065a4e371c7694a7803e9a26d1"

  url "https://download.getmalus.com/uploads/Malus#{version.dots_to_underscores}.dmg"
  name "Malus"
  desc "Proxy to help accessing various online media resources/services"
  homepage "https://getmalus.com/"

  livecheck do
    url "https://api.getmalus.com/api/checkDesktopUpdate?type=mac"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
