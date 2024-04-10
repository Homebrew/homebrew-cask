cask "mochi" do
  arch arm: "-arm64"

  version "1.17.5"
  sha256 arm:   "51f18e972d75d0778d70cf77128e0a9ac0534af196a21a75d1d868608afd0bef",
         intel: "3a5d8253eb9dfc19030629b664ef6eb7c09b34b83d0a1cf1c02f36e1f854d42e"

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
