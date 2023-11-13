cask "mochi" do
  arch arm: "-arm64"

  version "1.16.5"
  sha256 arm:   "68a8e21fbf720518c3ca9de6fe07c09ef1b7508cebcbe028272db878bc6a5aa4",
         intel: "c23a792aa5b322da0f5353961280abbc870edda0a77bdcfde3237416f44014ff"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    regex(/href=.*?Mochi[._-]?v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
