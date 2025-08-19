cask "mochi" do
  arch arm: "-arm64"

  version "1.19.2"
  sha256 arm:   "6401f1c60f069e46082fa447ade99246c373a75116fae80f1e9cfcd92f13e45c",
         intel: "1fe6cd9c1500d7518f1d405c88d59995cbb799315d032f6fb22d04a99bcd8c13"

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
