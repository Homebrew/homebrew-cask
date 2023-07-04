cask "mochi" do
  arch arm: "-arm64"

  version "1.15.23"
  sha256 arm:   "f37372af941663544d0704843b593073a9315bc497d507ba39c9322a6f334562",
         intel: "a1f40cbfbf27936eb44ae614c8a418334394b13684d2a79a303a65d3f3a5f2b1"

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
