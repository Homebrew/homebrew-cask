cask "mochi" do
  arch arm: "-arm64"

  version "1.16.8"
  sha256 arm:   "0710de041b38d68bb4fc812c558c775f0d8f55236a29932cec1f48c5bb982ce6",
         intel: "81ab8f6001df5e08be2cc7254f5885383eede0bc4913f898687c668daabe17e5"

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
