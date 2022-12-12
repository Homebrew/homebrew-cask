cask "polypane" do
  arch arm: "-arm64"

  version "12.0.0"
  sha256 arm:   "52dc489408b92a8840ff3e2ead223cf493e1c770dcfbc61cfb7c36941332e192",
         intel: "cac70edce500e61da26a32d0e64d0a709b1e10803075c42c65c32bae1dcfe215"

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
