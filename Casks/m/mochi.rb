cask "mochi" do
  arch arm: "-arm64"

  version "1.21.4"
  sha256 arm:   "fc0c0110b6336810495acfbf4489f53a61b8c5ac6b4f8ee96b46896433fbcd1c",
         intel: "262c51977870d75ec783f5ee8def1d8d9613bbcc55c25cfb2d7be27c829bc166"

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
