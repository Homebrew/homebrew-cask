cask "polypane" do
  arch arm: "-arm64"

  version "14.1.0"
  sha256 arm:   "521725755f6dee42e4c93d8dacd6e04f99cdad115db00e8992f6b4a8637e8a3a",
         intel: "fd8473ef9a6d7a0d9277c7bd4eb0fa0c44d660ecb4a04d6edc2f8e3aae58cc16"

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
