cask "polypane" do
  arch arm: "-arm64"

  version "24.1.0"
  sha256 arm:   "200e5bf9b6aab8af80a06683e9fc99cbf8e275a71f4021284e6a5969f9361dec",
         intel: "870a81c4c453de86dcf673b4bb826a2cea840c9f4990f49f2c4140b484081b7e"

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
