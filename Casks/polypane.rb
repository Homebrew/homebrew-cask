cask "polypane" do
  arch arm: "-arm64"

  version "13.0.1"
  sha256 arm:   "4d9f662741fa5c8cf194d0777f50c008793c3fb8c0f1f881a90b5339d633e1d6",
         intel: "ac1a5459021c220ed3fd9529bb94a583ebdae1c8de279e799d1012490b9dd543"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  app "Polypane.app"

  zap trash: [
    "~/Library/Application Support/Polypane",
    "~/Library/Caches/com.firstversionist.polypane.ShipIt",
    "~/Library/Caches/com.firstversionist.polypane",
    "~/Library/Logs/Polypane",
    "~/Library/Preferences/com.firstversionist.polypane.plist",
    "~/Library/Saved Application State/com.firstversionist.polypane.savedState",
  ]
end
