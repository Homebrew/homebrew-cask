cask "pocket-casts" do
  version "1.5"
  sha256 "bd3663d5ed3430955d8686e50ac57d5dc6e2e4e0148329f1acdbb0548cab5fc7"

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
