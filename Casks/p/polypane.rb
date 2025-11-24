cask "polypane" do
  arch arm: "-arm64"

  version "27.0.2"
  sha256 arm:   "17082afb3b026d334b2aa9086cb377053ad427224c6e816e388bf65ceeaaf4f1",
         intel: "0b39c0b5ae03c6c29d105fed301045fb0bf5400548aa02a7011e7171b495c4cd"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  depends_on macos: ">= :monterey"

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
