cask "presentify" do
  version "8.0.7"
  sha256 "9713a51c5bbb391ad8c5352649d6ec2e9a3e0ba49b9f0713d7823e6dbbcd8557"

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
