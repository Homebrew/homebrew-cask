cask "mochi" do
  arch arm: "-arm64"

  version "1.19.1"
  sha256 arm:   "12589c1d4b5cc9c97117d6807575b36ee666264ffb67960d99b4aed87708834a",
         intel: "6cefb1976b400191ebf16fe8de3fbe8a3fe04d434a174ec44e068b1da99a9961"

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
