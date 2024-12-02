cask "mochi" do
  arch arm: "-arm64"

  version "1.18.0"
  sha256 arm:   "925b93d40280e6c91340f0467a47d2558d3b46e6a42b8ad86b20e52c317e0f3f",
         intel: "fc7f40352072a66ee5c5a693ddde15871a489c7b739e10eab3e3acc9dc1c05b8"

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
