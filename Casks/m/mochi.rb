cask "mochi" do
  arch arm: "-arm64"

  version "1.20.8"
  sha256 arm:   "a4d57699732d0fd3a594aa2935b3efab4c57808b8b0df98962c5615ab8c39c87",
         intel: "989ecbc36bd5da9ed065584b3eb46666cad808d64d4215fa585cf1931e0cb580"

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
