cask "mochi" do
  arch arm: "-arm64"

  version "1.15.21"
  sha256 arm:   "0b3335e8c7677ba3c7baaad77b062d62d6da06325018f8411ddb45977abf55e6",
         intel: "d6a5838cd2ff5ff015e89c39be7b92c60e294a0a96ac581ce4a789bbf9f4d476"

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
