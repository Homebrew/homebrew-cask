cask "polypane" do
  arch arm: "-arm64"

  version "13.0.0"
  sha256 arm:   "01b5eb3291b4b548ee85534a9ad3189d23a57b4461a88804d08aafa400ca048a",
         intel: "bf46d9dec22eec31a2839014049e5e51808cd5e08a35d26148340a8c8ef68699"

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
