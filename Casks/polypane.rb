cask "polypane" do
  arch arm: "-arm64"

  version "13.0.2"
  sha256 arm:   "ed037682617ced62d164ad738f17e4d00efd360171cf68ac0df746e0efcdc78c",
         intel: "5aca950060f79a865229fe865eacd8c4f4d6853ef831a8058877d64d6f512606"

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
