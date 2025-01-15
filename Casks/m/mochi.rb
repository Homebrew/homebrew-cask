cask "mochi" do
  arch arm: "-arm64"

  version "1.18.4"
  sha256 arm:   "a247fcee2840efb65744f49d0c053228962912c9a482e09e7f063e626f5da0b4",
         intel: "2eb59671791384cce2aca3428ba400092dadd7392c1a7e1a448da960ce4d631a"

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
