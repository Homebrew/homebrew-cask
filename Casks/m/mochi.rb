cask "mochi" do
  arch arm: "-arm64"

  version "1.15.27"
  sha256 arm:   "6fb776c5165e7534c60279c488ff49b84116315652aca61923bc3081f6a22656",
         intel: "cd36fd8ad2961c2d1e1de3b1a074f3ef97bd15775dfea12f08e390ddf6ad0393"

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
