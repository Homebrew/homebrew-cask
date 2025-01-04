cask "mochi" do
  arch arm: "-arm64"

  version "1.18.3"
  sha256 arm:   "80cce4b6de39be4723133ad2907d795cbf7ca54144cf5ee83af38e162117d9ff",
         intel: "34f2df6bcb230daa67bdee884cb22a9aca282ea1cc50695db3a0a7c7ab6191a7"

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
