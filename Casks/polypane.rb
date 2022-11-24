cask "polypane" do
  arch arm: "-arm64"

  version "11.0.0"
  sha256 arm:   "1ec1c7dacea641ce10248227c5823ab5dc4044bf6d1619e26a4188efece24805",
         intel: "e470827f0ac53e3ea6f33406ac72e4043d944e7c69410d088c250fc220716d26"

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
