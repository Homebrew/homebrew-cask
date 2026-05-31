cask "mochi" do
  arch arm: "-arm64"

  version "1.21.14"
  sha256 arm:   "fcc2f98d64c154bce2b590da06853ab1527488d9aad238cc215df7c8b9d7d62a",
         intel: "be57720bf5641dff81a1fa4abcec7309333c17bee4d9a5fd0b114ff9facabca7"

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
