cask "polypane" do
  arch arm: "-arm64"

  version "15.0.1"
  sha256 arm:   "b1b3c4a6bf10b3ea45e2108b2a8bd93c4e25ace15b88f9ec02a8b2bf18fecf75",
         intel: "0febbd5289323c7edab6116ca18b55dbfd9b95b981918171b789fc7da78bf7fb"

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
