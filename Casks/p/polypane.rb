cask "polypane" do
  arch arm: "-arm64"

  version "21.1.0"
  sha256 arm:   "68ea77eddc9aacffd801c629d86ac4de480e19c9b18ee33d583ae02010900c17",
         intel: "85c8c7f0a81f7931a16b7bd1fecfde500be5a4499fcfee07bbf2c0d29815ac69"

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
