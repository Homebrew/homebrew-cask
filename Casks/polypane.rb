cask "polypane" do
  arch arm: "-arm64"

  version "13.1.0"
  sha256 arm:   "7c72662058529676eb6cfca7dc8a43a32255b6357c6c7dfc4990a5d6f9327e24",
         intel: "458bded24aafba0e10ea9e2b0e01ab508953cc435449bf9a071258885815705e"

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
