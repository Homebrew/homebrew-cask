cask "presentify" do
  version "8.0.6"
  sha256 "b1520808ce46992ad5985f4c3e8d5ce1a640658685ce2537fbc9d8843581abc9"

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
