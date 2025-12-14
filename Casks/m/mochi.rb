cask "mochi" do
  arch arm: "-arm64"

  version "1.20.5"
  sha256 arm:   "2cab43dda28506f2deea8ad1a1b7afc646dd522983b8c461b222e0cdbbb133ee",
         intel: "f9f86c8ebe84934c3364b1c58b7a09119c578429621233bee7fe473787a1c35c"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
