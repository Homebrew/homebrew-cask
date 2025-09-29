cask "polypane" do
  arch arm: "-arm64"

  version "26.0.0"
  sha256 arm:   "2580f9d0457f8e776d59ab8809c79f5022a987235e1f38fb2d2ec0aa77d63c69",
         intel: "023f4a3b1d8d14c07d6d96ac18cdc0161e0581b8c51f60fbbe07ffec182754c8"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  depends_on macos: ">= :monterey"

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
