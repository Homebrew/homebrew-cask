cask "mochi" do
  arch arm: "-arm64"

  version "1.20.8"
  sha256 arm:   "714ec8c00bf2a9995b125f03201f97bb053155abb2be8871f04d906303482089",
         intel: "92afffd256d47e6ec62b4241d0b70081f6d3b48a41a4510b469ac982a3cdb7b3"

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
