cask "stashpad" do
  arch arm: "-arm64"

  version "1.2.28"
  sha256 arm:   "38631d69db2316ca513a4f7331fa3e15248720ea252e596a81e91842791ddd8b",
         intel: "2139046350c14907030700c548b2e6899553baba20fa4cb8c995c717eeb6c068"

  url "https://github.com/stashpad/sp-desktop-release/releases/download/v#{version}/Stashpad-#{version}#{arch}.dmg",
      verified: "github.com/stashpad/sp-desktop-release/"
  name "Stashpad"
  desc "Notes app for collaborative work"
  homepage "https://www.stashpad.com/"

  depends_on macos: ">= :high_sierra"

  app "Stashpad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stashpad.app.sfl*",
    "~/Library/Application Support/Stashpad",
    "~/Library/Caches/Stashpad",
    "~/Library/Logs/Stashpad",
    "~/Library/Preferences/com.stashpad.app.plist",
    "~/Library/Saved Application State/com.stashpad.app.savedState",
  ]
end
