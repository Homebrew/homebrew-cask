cask "polypane" do
  arch arm: "-arm64"

  version "28.0.0"
  sha256 arm:   "75744bbb6c60bcc8970035f47ecdc1527cb1e3cd33fd656c8f60ae9c45faba49",
         intel: "9d1d5d030b0cf942029cb3a0f2819a0e04d920fc83ff995705b9dcd1ecfaf929"

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
