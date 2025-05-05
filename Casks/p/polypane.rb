cask "polypane" do
  arch arm: "-arm64"

  version "24.0.2"
  sha256 arm:   "80e0642c55348b4212ee2f2886e9b6d74fd3d6732db8bfb1bfeb595e980a1eca",
         intel: "e6248b40f2f4ae672b3fbf81a20316ea406b9c1e1aa1f46d39417ec8a83f8184"

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
