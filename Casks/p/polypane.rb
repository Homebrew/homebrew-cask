cask "polypane" do
  arch arm: "-arm64"

  version "20.1.1"
  sha256 arm:   "db9a0330c375cf526755317d7bd9ead727883c8e2d88edcb8bfeb017ae98fce9",
         intel: "b57fb8dabda16349e42f934a40098bd0660ef144e6fea46cb46da6c77f452bf8"

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
