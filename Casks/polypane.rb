cask "polypane" do
  arch arm: "-arm64"

  version "13.1.1"
  sha256 arm:   "e352da0b45300442e4676cc7bf4609954dfedb29503fcd4e285b90d014b426b9",
         intel: "43db376b29657fbc5ecdfc732703d690efde1e4e66f9da4546b9eda68731ac18"

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
