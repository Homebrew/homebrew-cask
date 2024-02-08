cask "mochi" do
  arch arm: "-arm64"

  version "1.16.7"
  sha256 arm:   "f4536f6293dc2e304a943c8c00b7d6ef8e44aa012236fa732664016a5dab54a0",
         intel: "066f0697ac5284955656662c4dcd9f100f5d8a244e217ff7213efa25ae64a4b3"

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
