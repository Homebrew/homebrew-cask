cask "mochi" do
  arch arm: "-arm64"

  version "1.18.10"
  sha256 arm:   "0d65ae2b1c979c762cb1352b3fbff401475d1b7754529fe1228967b005782f0b",
         intel: "ebe9b5e7a2c3221e3a4bfd893c46f7b9801a1948851461fa862a712e8189de17"

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
