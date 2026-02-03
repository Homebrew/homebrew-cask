cask "mochi" do
  arch arm: "-arm64"

  version "1.20.10"
  sha256 arm:   "9cbcfbdc6eafb618977b1efecba6cb5617bf46f2b77c4dd41eecc77fc95c8a51",
         intel: "32ebf38a317678310b7127cecaa7df2a4e6dc766b9d6f53c706576fd28527d38"

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
