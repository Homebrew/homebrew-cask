cask "polypane" do
  arch arm: "-arm64"

  version "20.0.0"
  sha256 arm:   "4219424e0fa1c7395054e857acb0ad2bc4a25053fc175dfcddfba1e4c7fd88f6",
         intel: "b16583355e9593b4a7784be5cc5a889cdd0e6140b4229a474f25c2158d9095fb"

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
