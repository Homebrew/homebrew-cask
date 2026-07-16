cask "presentify" do
  version "8.1.3"
  sha256 "d4f96a8ea7235bed6ce178dc2f1b427060ed782750f243952b6b8bc142612aaa"

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
