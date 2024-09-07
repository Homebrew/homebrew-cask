cask "mochi" do
  arch arm: "-arm64"

  version "1.17.11"
  sha256 arm:   "5979d914938317bbcd9a3bd38a25c02bd495f4230832df37cb4b1bebea874961",
         intel: "0359e5854219e6826a53f6dc524d66f8686efbb8282c7fd677f67ed33ac50935"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    regex(/href=.*?Mochi[._-]?v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
