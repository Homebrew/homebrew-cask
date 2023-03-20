cask "polypane" do
  arch arm: "-arm64"

  version "13.0.3"
  sha256 arm:   "c5e45e3bd98ab450e9857787c560433e414b2693df178a5b43f966a88f5ddc4e",
         intel: "e6fff98cea7be6e28eb554f1566e22304576a5d836094b648b939adf01cca0fb"

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
