cask "mochi" do
  arch arm: "-arm64"

  version "26.8.2"
  sha256 arm:   "c6640d334ba4d054189c9f9a7f1b03e86a11e87eed7c4f6d064d86b763b41c67",
         intel: "f1411e555ed1ab9cc0a99f3ce8c8460a07ebce868dcb9aade87c8dadb4752d99"

  url "https://download.mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://download.mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
