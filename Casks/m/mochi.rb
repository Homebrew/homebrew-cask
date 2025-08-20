cask "mochi" do
  arch arm: "-arm64"

  version "1.19.3"
  sha256 arm:   "79277fc237021aebc9b66cd8d4e2fadce6b5be60c20c2a929fc2a35698290501",
         intel: "320ad4588d64cdc742aae2f09034312685622bb54e7f35649f9f84c6080e0a49"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
