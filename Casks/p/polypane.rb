cask "polypane" do
  arch arm: "-arm64"

  version "22.1.1"
  sha256 arm:   "036810a1c75ec00ecf5feee821b6835107b5b91039f38ef79948a8aa4bb2d760",
         intel: "87477fd9863c6239c63e2ba1038bcdd66f7baaba9546c540f0d49df7dac7ecb3"

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
