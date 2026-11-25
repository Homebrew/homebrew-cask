cask "mochi" do
  arch arm: "-arm64"

  version "26.11.2"
  sha256 arm:   "faf365693c16c37a88a17336215f47f312ad521e3a5c054bb0378adb81d30ca0",
         intel: "d4a00ce907da00a50f19393351be1c3c582eeac0b03b3c505d176f75758d003c"

  url "https://download.mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://download.mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.msteedman.mochi.sfl*",
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
