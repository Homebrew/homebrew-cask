cask "mochi" do
  arch arm: "-arm64"

  version "1.17.10"
  sha256 arm:   "997ff0de0745a341a1d84af546e3fc561f0dc68ced3c7cbc554994f137b52ae1",
         intel: "6a58669ee1b45063ae2f91b312d77a6bbf255041fb6dc253017fb562ab1baa04"

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
