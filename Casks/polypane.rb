cask "polypane" do
  arch arm: "-arm64"

  version "14.0.1"
  sha256 arm:   "2984462bbbd545003300df13c96bf8e4580592ca05bd87c8f71707b3dca77d4e",
         intel: "4110fb7e5ef0c2e1f3c59fe3d9ba400070a198274ff3901ce383111ac2902a3a"

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
