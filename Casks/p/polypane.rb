cask "polypane" do
  arch arm: "-arm64"

  version "18.0.1"
  sha256 arm:   "e472d7f4b387c881147f36b2ed05f90066d5797c4ab71ba6558552373020de2a",
         intel: "dcd38737807c0c5aa51abf8dfc005a7b8c154ea4c3f4f6c2a8cda92f9406cb90"

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
