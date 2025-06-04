cask "polypane" do
  arch arm: "-arm64"

  version "24.1.2"
  sha256 arm:   "0b6fcf00a9f26821275e0b224ade70333613e0efcbd0886f44c296f1c5f45de3",
         intel: "5de2eb6ea7b775fda65ede8fbc4db7cb26e95cc51449c0e19b953734b5cf75b1"

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
