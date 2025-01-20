cask "mochi" do
  arch arm: "-arm64"

  version "1.18.5"
  sha256 arm:   "55bd59e90528951cdb6010f873c9614aeaa793db9aece101335d7abc71a5a9fc",
         intel: "e195a5adb495a93669f8dfe561d6c69f8abd51c0e4b0528eb9d15e46ddafc607"

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
