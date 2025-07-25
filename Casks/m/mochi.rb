cask "mochi" do
  arch arm: "-arm64"

  version "1.19.1"
  sha256 arm:   "a0d7fa30e64fed2761d1134e8ef5f54d4bf9f8753d54984d7c7b77b3414ec316",
         intel: "4b13c9ece0edbddc840bb26dc12a12b2b457965912052bc0083b72f54ad98aa3"

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
