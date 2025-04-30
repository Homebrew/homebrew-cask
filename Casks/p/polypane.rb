cask "polypane" do
  arch arm: "-arm64"

  version "24.0.1"
  sha256 arm:   "c63d11a9c4eaa7d690a10c2a39aebba04945be7a01e406c4d5ca968a808315d9",
         intel: "28d9ff100fd40bc2992023f1673c8acb95d81467be4a323a771b5e0b3bd4c521"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  depends_on macos: ">= :big_sur"

  app "Polypane.app"

  zap trash: [
    "~/Library/Application Support/Polypane",
    "~/Library/Caches/com.firstversionist.polypane",
    "~/Library/Caches/com.firstversionist.polypane.ShipIt",
    "~/Library/Logs/Polypane",
    "~/Library/Preferences/com.firstversionist.polypane.plist",
    "~/Library/Saved Application State/com.firstversionist.polypane.savedState",
  ]
end
