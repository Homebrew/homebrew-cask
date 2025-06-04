cask "mochi" do
  arch arm: "-arm64"

  version "1.18.12"
  sha256 arm:   "5632599464496a84a058bd96c416187816fc92030d875604e6ea27489f3c46f7",
         intel: "c095636362e6e6fc6a6411b5a1540a203cccc6ecd1d5b5e33836c66fdd09effc"

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
