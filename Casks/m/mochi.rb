cask "mochi" do
  arch arm: "-arm64"

  version "1.18.9"
  sha256 arm:   "baa3d4de4863f3b2847dfd6797f627da4f19a3b99d0ccef33b0b330e510b6e58",
         intel: "7da37d1fbb9342fe82129b764b6bcc0742d0ab80bbcf3dcf20ab3679bcf8fec8"

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
