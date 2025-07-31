cask "polypane" do
  arch arm: "-arm64"

  version "25.1.1"
  sha256 arm:   "211a4da0cfc6ff262d4875cb2c3bc364587f80d72b848766a96911eef07736a7",
         intel: "2fa1cf6d15081c6399a42e8a73b9bad7e21628e48fc2bba711f7adf1bce80bbd"

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
