cask "polypane" do
  arch arm: "-arm64"

  version "23.1.1"
  sha256 arm:   "671205ffad81ba4c5742e4de79445a37a910eb2efcdaa444cb061a9389f2e7e4",
         intel: "b0531a9cba38739da5d391df3b08ce30e65923ecf92792318d6acf99ccb7bf9c"

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
