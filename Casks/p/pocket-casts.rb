cask "pocket-casts" do
  version "2.4.0"
  sha256 "fc092f3818d1a4319e49acad10e5eb9d9956b0adefb42fb5ff0ee38a7487c6e7"

  url "https://cdn.a8c-ci.services/pocket-casts-desktop/pocket-casts-desktop-darwin-universal-v#{version}.dmg",
      verified: "cdn.a8c-ci.services/pocket-casts-desktop/"
  name "Pocket Casts"
  desc "Podcast platform"
  homepage "https://play.pocketcasts.com/"

  livecheck do
    url "https://pocketcasts.com/get/mac",
        user_agent: :browser
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "Pocket Casts.app"

  zap trash: [
    "~/Library/Application Support/au.com.shiftyjelly.PocketCasts",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.pocket-casts.sfl*",
    "~/Library/Application Support/Pocket Casts",
    "~/Library/Caches/au.com.shiftyjelly.PocketCasts",
    "~/Library/Caches/com.electron.pocket-casts*",
    "~/Library/HTTPStorages/com.electron.pocket-casts",
    "~/Library/Preferences/au.com.shiftyjelly.PocketCasts.plist",
    "~/Library/Preferences/com.electron.pocket-casts.plist",
    "~/Library/Saved Application State/com.electron.pocket-casts.savedState",
  ]
end
