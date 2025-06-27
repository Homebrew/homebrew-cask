cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "b57014a712db7b572b5d5153f6930863c524a796a9a9f1046f8ea92cbcfe24d5",
         intel: "c17d15ee071e750bd32fe1e770a89461b0d811405e613dd93a81efe99b7fa9d9"

  url "https://github.com/heyman/heynote/releases/download/v#{version}/Heynote_#{version}_#{arch}.dmg",
      verified: "github.com/heyman/heynote/"
  name "Heynote"
  desc "Dedicated scratchpad for developers"
  homepage "https://heynote.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Heynote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.heynote.app.sfl*",
    "~/Library/Application Support/Heynote",
    "~/Library/Caches/com.heynote.app",
    "~/Library/Caches/com.heynote.app.ShipIt",
    "~/Library/Caches/heynote-updater",
    "~/Library/HTTPStorages/com.heynote.app",
    "~/Library/Logs/Heynote",
    "~/Library/Preferences/ByHost/com.heynote.app.ShipIt.*.plist",
    "~/Library/Preferences/com.heynote.app.plist",
    "~/Library/Saved Application State/com.heynote.app.savedState",
  ]
end
