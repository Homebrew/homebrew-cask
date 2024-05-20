cask "mochi" do
  arch arm: "-arm64"

  version "1.17.9"
  sha256 arm:   "8867b44289efc5ac60bca87e9a97b10317202e0f8beeb367feccd6f301450ea8",
         intel: "287c70aeb55133813b5abdd426961b7e6bdbe0bd26536392c006194d7547c378"

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
