cask "polypane" do
  arch arm: "-arm64"

  version "28.0.1"
  sha256 arm:   "0882a4fb086808db09eaa67fde8095fa09286c739f9112adccc09c23efc83879",
         intel: "2f0d024c9307a379cf0b09d6c03a5a0721f34e8da4b180f2eb6b744e2dac13f3"

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
