cask "bobhelper" do
  version "0.1.0"
  sha256 "1b888ec348cf28a509cca874e30688dab8975043d89dd6371aad04f565be9fbd"

  url "https://release.ripperhe.com/BobHelper/tag/v#{version}/BobHelper.dmg",
      verified: "release.ripperhe.com/BobHelper/"
  name "BobHelper"
  desc "Helper tool designed for Bob to solve the shortcut key issue"
  homepage "https://bobtranslate.com/guide/advance/bobhelper.html"

  livecheck do
    url "https://appcast.ripperhe.com/bobhelper/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "BobHelper.app"

  uninstall quit:       "com.hezongyidev.BobHelper",
            login_item: "BobHelper"

  zap trash: [
    "~/Library/Application Support/com.hezongyidev.BobHelper",
    "~/Library/Caches/com.hezongyidev.BobHelper",
    "~/Library/HTTPStorages/com.hezongyidev.BobHelper",
    "~/Library/Preferences/com.hezongyidev.BobHelper.plist",
    "~/Library/Saved Application State/com.hezongyidev.BobHelper.savedState",
  ]
end
