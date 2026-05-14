cask "mochi" do
  arch arm: "-arm64"

  version "1.21.11"
  sha256 arm:   "3cdb0223ddd32a6bda1af1c6bb67d1ea6bd6bdd6e7863b0eae8dfce9f02205a3",
         intel: "a9eefa4c34222081f8d45b04993edf2547059dfe56336817c7daeb09977bffa6"

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
