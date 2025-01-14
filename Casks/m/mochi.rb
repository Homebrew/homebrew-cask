cask "mochi" do
  arch arm: "-arm64"

  version "1.18.4"
  sha256 arm:   "ba288389cae2d0c5169ae4c26673c0d45bd984add05f1f931b605c36de691b73",
         intel: "f8de6953b8da01c2ce56819c539187561ef18a89c3248ac98b5384314a29bf11"

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
