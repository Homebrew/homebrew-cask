cask "presentify" do
  version "8.2.1"
  sha256 "d7760c75aebfc7ec4207423ce18581febf6e42f15d30f9c4b6b3bf891b6db742"

  url "https://rampatra.github.io/presentify-updates/Presentify-#{version}.dmg"
  name "Presentify"
  desc "Annotate screens, highlight cursors, and spotlight or zoom key areas"
  homepage "https://presentifyapp.com/"

  livecheck do
    url "https://rampatra.github.io/presentify-updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Presentify.app"

  zap trash: [
    "~/Library/Application Scripts/com.rampatra.presentify",
    "~/Library/Caches/com.rampatra.presentify",
    "~/Library/Containers/com.rampatra.presentify",
    "~/Library/HTTPStorages/com.rampatra.presentify",
    "~/Library/Preferences/com.rampatra.presentify.plist",
    "~/Library/Preferences/presentify-user-defaults-suite.plist",
  ]
end
