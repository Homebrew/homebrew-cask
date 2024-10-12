cask "mochi" do
  arch arm: "-arm64"

  version "1.17.15"
  sha256 arm:   "f80f7d3ed5db953336f95d873cc981ee2940120f1b2bc5aab018c18c6fbb60a3",
         intel: "e8de0329dd280f4f68f58dea73398d526870b54c93a2167f16408db49da81b01"

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
