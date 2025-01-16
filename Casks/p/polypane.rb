cask "polypane" do
  arch arm: "-arm64"

  version "23.0.0"
  sha256 arm:   "30bc4fd0bfdd40ed201ce7cf91241d5a27f4e15ab8e08bab030232bdf0a4b821",
         intel: "7bbc6e574d552a3084f539c4b6edd05c40cfb17f802e8b99509e6658c850dcf4"

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
