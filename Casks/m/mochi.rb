cask "mochi" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "9eaab9e6755b74433bc5c7b3b35d7a66061726665eeb6c964a288c3e069e200a",
         intel: "3543e435ed17ceed2a9061614f1319f94602c15284f0e1d2d4a661aee946ed27"

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
