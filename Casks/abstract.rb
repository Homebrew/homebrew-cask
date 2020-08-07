cask "abstract" do
  version "95.0.0"
  sha256 "dcfdf312191c21d9d24e38f6277e482688bdaf6035233c17b049cb4726602f97"

  url "https://downloads.goabstract.com/mac/Abstract-#{version}.dmg"
  appcast "https://www.goabstract.com/release-notes/"
  name "Abstract"
  homepage "https://www.goabstract.com/"

  auto_updates true

  app "Abstract.app"

  zap trash: [
    "~/Library/Application Support/Abstract",
    "~/Library/Caches/com.elasticprojects.abstract-desktop",
    "~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist",
    "~/Library/Preferences/com.elasticprojects.abstract-desktop.plist",
    "~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState",
  ]
end
