cask "mochi" do
  arch arm: "-arm64"

  version "1.17.14"
  sha256 arm:   "b2e2179a36c28b9dfd2958029faaf4d05503b866dc1b9a89c746eaca01cd3658",
         intel: "f11d4c2c1dbad32a6073da4ffa395353f6242cd00f35a646e1a37b7c2e2cc89e"

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
