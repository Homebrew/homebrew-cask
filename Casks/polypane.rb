cask "polypane" do
  version "8.0.0"
  sha256 "4faac4a9b9fbb8c3805ee890809394fe92ee9aed326cf98557b33803fd83fc92"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}-universal.dmg",
      verified: "github.com/firstversionist/polypane"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
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
