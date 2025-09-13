cask "mochi" do
  arch arm: "-arm64"

  version "1.19.5"
  sha256 arm:   "6daae53be6985b9560681481e335b68b78a232543dc81b2d2c2eb2790649c56b",
         intel: "730915477c15eabdcfc4766c088e4bc375c5f546cb123c5b2eb5dd88dd702a12"

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
