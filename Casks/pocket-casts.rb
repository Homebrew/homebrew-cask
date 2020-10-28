cask "pocket-casts" do
  version "1.4.3"
  sha256 "d16cf16912837048b560ed3fb5db2cb0dd7cc4686834aef64b6ff2da0407788e"

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
