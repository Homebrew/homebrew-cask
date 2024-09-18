cask "mochi" do
  arch arm: "-arm64"

  version "1.17.12"
  sha256 arm:   "de0c988d5bbd58e1e72433509ade12b4ec56bd895683c7c8516905d813c81778",
         intel: "7668928313f4d62c365063dc4173ee149f135dcdd67fd0aa80fcafe0a6b78bce"

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
