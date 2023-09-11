cask "polypane" do
  arch arm: "-arm64"

  version "15.0.0"
  sha256 arm:   "f5837049f663358c226ea39fac1f41b67ac4a39d813b19771ebaacd71c03d632",
         intel: "7d93d3ceec454e58f4b73b52db634581c25a7895761c75dd62faa4f7ae6bc910"

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
