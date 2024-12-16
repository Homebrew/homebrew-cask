cask "mochi" do
  arch arm: "-arm64"

  version "1.18.2"
  sha256 arm:   "f576c713f88eaf15faf753ff764a4706d7bc2d5b60c0d2504468f6cbda8524cd",
         intel: "1de5df42d71c2c314fb28e17bc23ce6192c42b05a6ef24196e6ec901bf4bdd9a"

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
