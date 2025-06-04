cask "mochi" do
  arch arm: "-arm64"

  version "1.18.13"
  sha256 arm:   "d0ceeb3d8a900e17e0d4230facf6701dda70dc4d89f939b84d13aeba14ef4819",
         intel: "140f76548746cf0802a04a094952b055ba280ccbe2df170e7471bd01eb44a797"

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
