cask "mochi" do
  arch arm: "-arm64"

  version "1.15.25"
  sha256 arm:   "632080bff9c86e47ecc1ecb962e43fa02146e6f65ec7b98b3b0f3f0ac1063c5a",
         intel: "92647b82e8c7e4c003d1d6293c577accbbf5e601a4b5a69966add619a3cc50fb"

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
