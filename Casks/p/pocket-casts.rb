cask "pocket-casts" do
  version "2.4.4"
  sha256 "80ba95abda6b36d1eef64041a8a35ce996228475a47c721521e28c36fbcdabcf"

  url "https://cdn.a8c-ci.services/pocket-casts-desktop/pocket-casts-desktop-darwin-universal-v#{version}.dmg"
  name "Pocket Casts"
  desc "Podcast platform"
  homepage "https://play.pocketcasts.com/"

  livecheck do
    url "https://pocketcasts.com/get/mac",
        user_agent: :browser
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Pocket Casts.app"

  zap trash: [
    "~/Library/Application Support/au.com.shiftyjelly.PocketCasts",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.pocket-casts.sfl*",
    "~/Library/Application Support/Pocket Casts",
    "~/Library/Caches/au.com.shiftyjelly.PocketCasts",
    "~/Library/Caches/com.electron.pocket-casts*",
    "~/Library/HTTPStorages/com.electron.pocket-casts",
    "~/Library/Logs/Pocket Casts",
    "~/Library/Preferences/au.com.shiftyjelly.PocketCasts.plist",
    "~/Library/Preferences/com.electron.pocket-casts.plist",
    "~/Library/Saved Application State/com.electron.pocket-casts.savedState",
  ]
end
