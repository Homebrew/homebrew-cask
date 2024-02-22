cask "polypane" do
  arch arm: "-arm64"

  version "18.0.0"
  sha256 arm:   "0be0605716954ec155a90e45f5f9516d6a27decce179e14d00e17326df0f6123",
         intel: "4be1bdf3fce95f7ad9a282f849f6802dd1adf113dc92ab180b14d82dc5745bd7"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

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
