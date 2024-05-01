cask "mochi" do
  arch arm: "-arm64"

  version "1.17.6"
  sha256 arm:   "204dfd82889df5169f4b04fedec1ee4a76fb7f66fe8b84251c7b8ae07fde0573",
         intel: "436ffb537166957ec26dfe73d3266f304768d6bcf84ae17831f3bd81a380c495"

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
