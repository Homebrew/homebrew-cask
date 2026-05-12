cask "mochi" do
  arch arm: "-arm64"

  version "1.21.10"
  sha256 arm:   "9e700bd70d844401f4da79bc38cb5522e56332a4a72ee8812ecc6e06540d94f2",
         intel: "ed7b77c0fa841fb3cf386b7018728058122fa5d92465ef51d764b44e742e0ae3"

  url "https://download.mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://download.mochi.cards/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
