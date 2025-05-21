cask "polypane" do
  arch arm: "-arm64"

  version "24.1.1"
  sha256 arm:   "98a711a0dfa91bab0a4c390eb21b51d702b5cea786454c46a6fe947709eb3109",
         intel: "e590baffa9c151437d460347817f65aa17ca42d310a24a37d84173050de6688b"

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
