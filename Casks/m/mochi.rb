cask "mochi" do
  arch arm: "-arm64"

  version "1.21.3"
  sha256 arm:   "0443077bb30e1f0da98f5e46498557bfdf6e355a701f9cd545117ae04877825a",
         intel: "46ea7d57860fa11fd5b934dd83c9642f2ffe81b1e2af53f0a42d05081a09ec34"

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
