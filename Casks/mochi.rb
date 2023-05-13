cask "mochi" do
  arch arm: "-arm64"

  version "1.15.22"
  sha256 arm:   "795cc071be70e5a0619b2b93941f67ee62c70f605e8738444ba8872ca1131774",
         intel: "f5103d68993227b61e9f2ca9b4336d0209cca65d77e320ceb3d1ac0fbd813d3e"

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
