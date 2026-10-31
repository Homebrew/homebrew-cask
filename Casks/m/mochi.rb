cask "mochi" do
  arch arm: "-arm64"

  version "26.10.1"
  sha256 arm:   "94848605cd7fc54dcd6cf7c45f798ed732df2d34e14fba3376c7bad606ea286d",
         intel: "82dd74b9aec541993208fc168a6bfe91686f8f090c72eaebb51523bf8a0d58a2"

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
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
