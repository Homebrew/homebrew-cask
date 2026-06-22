cask "mochi" do
  arch arm: "-arm64"

  version "1.21.16"
  sha256 arm:   "76d7506581abba44ff5207cd76c9c6c4e626a6e79b2420c75d6f1c0063761991",
         intel: "15d345a6e20e3204739e207d0337b7194a4d636ee1fbe4ad4ddc2a7c5d64d3b2"

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
