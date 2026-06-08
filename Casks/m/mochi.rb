cask "mochi" do
  arch arm: "-arm64"

  version "1.21.15"
  sha256 arm:   "bbfc4aa29b68aff4af0a3011a2be478cd81797ce8b8cda2d10c13b833ffe186f",
         intel: "c235aeac774a79a48eeccf96801fd8308a0b7cfb12d0525e986475986e9c2033"

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
