cask "mochi" do
  arch arm: "-arm64"

  version "26.9.2"
  sha256 arm:   "0ea9e20c55601a52909fcb1d75dcd3d9fcd1ed337cee004bf7b65c534a51ac7c",
         intel: "6b1d834378cba3329d907e5fa65c5a206b711cee5f2b7bc6879d6e430abab21f"

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
