cask "polypane" do
  arch arm: "-arm64"

  version "22.1.0"
  sha256 arm:   "4aac966a36c073c2ada1440452958f6e655ea10f45e311d78747876b35c6f2ef",
         intel: "2682d3baadd03864253cd8aeafa2dbe5684078a1920c5faa4c593a91bc3cf7d1"

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
