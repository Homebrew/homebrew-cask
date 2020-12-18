cask "pocket-casts" do
  version "1.5,44"
  sha256 :no_check

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
