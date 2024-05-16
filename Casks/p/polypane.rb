cask "polypane" do
  arch arm: "-arm64"

  version "19.0.0"
  sha256 arm:   "80bd20f669f2db2c3618f408e89617ad28e1b65bc5e5e0fb03b02bb280d079eb",
         intel: "3ee48581a6777bef5d997994239b354859ca708c529894f223f305eb425a8d11"

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
