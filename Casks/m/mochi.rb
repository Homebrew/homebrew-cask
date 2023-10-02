cask "mochi" do
  arch arm: "-arm64"

  version "1.15.28"
  sha256 arm:   "d55a3f6cfe26211ea4f42923bd71d9b2c6ec3a18ce4e5f75180c522ea20b989c",
         intel: "f2205e6f2394bcef20ed6b1ccbae8b50d39fef5a8b9d11e237bc7c8b2f8f88c2"

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
