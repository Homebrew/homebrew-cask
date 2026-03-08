cask "mochi" do
  arch arm: "-arm64"

  version "1.21.1"
  sha256 arm:   "6fa9403724166e8bf2d977a0109fdc345ae1877600e06ea3ce5e6ba5ec62d284",
         intel: "8873410fc303987f8ecccdb1515384ac1dda3f2a45374c0290b2a07d28f37d24"

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
