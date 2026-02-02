cask "mochi" do
  arch arm: "-arm64"

  version "1.20.9"
  sha256 arm:   "ecc4b5238d6bead113023736dc29327e97d384c94f88f984d74e207dab61d9e3",
         intel: "9cef551793fcb007a9204ac694dc4a904a6ced6912e65b5b0b7f49a1072cee01"

  url "https://download.mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url "https://download.mochi.cards/releases/latest-mac.yml"
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
