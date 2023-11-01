cask "polypane" do
  arch arm: "-arm64"

  version "16.0.0"
  sha256 arm:   "4630a70ecb13669641b332ac26d07e1eb5177da8aea03c15ee164420d227a46e",
         intel: "f744b6732d0ff0b6c96849cb6b5d6834c99ab1822fc8816d09409a8ea3cc810a"

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
