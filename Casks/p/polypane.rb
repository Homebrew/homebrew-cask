cask "polypane" do
  arch arm: "-arm64"

  version "28.0.3"
  sha256 arm:   "8617e98d946680ae3b3f523c8c560338b47c0aa68cfa56c75416b416ea90ed08",
         intel: "80c2a9803b1245d850c0003285947fe339a40bd8c6938bd68a0d38d3b2be0bbe"

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
