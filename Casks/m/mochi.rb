cask "mochi" do
  arch arm: "-arm64"

  version "1.17.16"
  sha256 arm:   "c6da24abb615504e01b1521d45fe77372e798f64f0bb2dd97a2dd5eb567f30e3",
         intel: "3f1370323ddb27341ccb953afff179e27c81247fddd23d75700d699fd84ce88e"

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
