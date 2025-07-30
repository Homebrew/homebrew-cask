cask "polypane" do
  arch arm: "-arm64"

  version "25.1.0"
  sha256 arm:   "5f865c5c65eba7307cc4cbbfd38adb98e1f391ecfc4aece0cf736d7c91da4964",
         intel: "f215657eb5de9b04c458af579a1b283a550f4d783f8b36c25c47ead1d7bd6388"

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
