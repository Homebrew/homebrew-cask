cask "mochi" do
  arch arm: "-arm64"

  version "1.17.4"
  sha256 arm:   "d428a3ff55a8e8fb5430ab545ad19e2842c16c906d90524df7bbb613940990be",
         intel: "f7afe27d6ec3f44028433843d8cf5a4970bb85da4783ef053e51277c0fa8a078"

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
