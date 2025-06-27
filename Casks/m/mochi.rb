cask "mochi" do
  arch arm: "-arm64"

  version "1.19.0"
  sha256 arm:   "c4c3d4e7a71caf50bd11447611eda71a6f949230b5c624fe0b6d33aa8e2a79c0",
         intel: "db2f60c0efa5d87b39f8b7bceef44e61becdab61bf818bb40d41c915f43e226c"

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
