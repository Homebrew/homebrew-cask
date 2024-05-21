cask "polypane" do
  arch arm: "-arm64"

  version "19.0.1"
  sha256 arm:   "a603fe401118d0fb3ed2dd8c7e3aa641ec27cbeb07836136b8795797e8f97af0",
         intel: "4b433ea880b8250864f62f058cc0568d8f58fdf8871c9c920d9e2353c4825434"

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
