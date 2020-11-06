cask "pocket-casts" do
  version "1.4.4"
  sha256 "79cefd91ef5075a1e8e711af3d47a86f475ce2f1537d45c822a14670267841d8"

  url "https://static.pocketcasts.com/mac/PocketCasts.zip"
  appcast "https://static2.pocketcasts.com/mac/appcast.xml"
  name "Pocket Casts"
  desc "Podcast platform"
  homepage "https://play.pocketcasts.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Pocket Casts.app"

  zap trash: [
    "~/Library/Application Support/au.com.shiftyjelly.PocketCasts",
    "~/Library/Caches/au.com.shiftyjelly.PocketCasts",
    "~/Library/Preferences/au.com.shiftyjelly.PocketCasts.plist",
  ]
end
