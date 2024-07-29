cask "polypane" do
  arch arm: "-arm64"

  version "20.1.0"
  sha256 arm:   "c118f824c46b68005f9dd12258ee4456227cf6f7f994957f70b515ac25245f17",
         intel: "384f47d22b3e3fdf6834bda539d25a63945bc9475be9786689cc2b66574d5770"

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
