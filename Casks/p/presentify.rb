cask "presentify" do
  version "8.1.2"
  sha256 "e603f54ba4e2ecb64c5805f6d51efc16bd44fcd7f20c57aae815397253f17a6b"

  url "https://rampatra.github.io/presentify-updates/Presentify-#{version}.dmg",
      verified: "rampatra.github.io/presentify-updates/"
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
    "~/Library/Caches/com.rampatra.presentify",
    "~/Library/HTTPStorages/com.rampatra.presentify",
    "~/Library/Preferences/com.rampatra.presentify.plist",
    "~/Library/Preferences/presentify-user-defaults-suite.plist",
  ]
end
