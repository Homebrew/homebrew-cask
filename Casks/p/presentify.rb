cask "presentify" do
  version "8.0.4"
  sha256 "a16a3f69582a9db996c3dd81072bab161156e2eb0a0e421297974bba1669ddef"

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
    "~/Library/Application Support/Presentify",
    "~/Library/Caches/com.rampatra.presentify",
    "~/Library/HTTPStorages/com.rampatra.presentify",
    "~/Library/Preferences/com.rampatra.presentify.plist",
    "~/Library/Saved Application State/com.rampatra.presentify.savedState",
  ]
end
