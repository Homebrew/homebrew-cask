cask "polypane" do
  arch arm: "-arm64"

  version "26.0.1"
  sha256 arm:   "ae1d1279eb6ed205c63b4aa595689cb66fc01b9d56db505fd6b0a23f7d74f3d6",
         intel: "1cea523f0373db05313294f6dc4cbfce0748ce86190af0440b40e94d02d194f5"

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
