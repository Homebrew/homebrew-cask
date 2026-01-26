cask "mochi" do
  arch arm: "-arm64"

  version "1.20.7"
  sha256 arm:   "f5b348917e2513abd4dbd5cc9e569fd483ca0fdbd8ab9de7e94226924a2cb1b1",
         intel: "807ea585d9e8f60f11d38e2656fdda470d155988681c97c7920b34ba2df3c46d"

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
