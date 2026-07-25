cask "polypane" do
  arch arm: "-arm64"

  version "29.0.0"
  sha256 arm:   "678aa67a32fef494761e7ffa70680adbc0737a67e0ceae0ca71fbe428e5ad07e",
         intel: "394d70f3e356f29e26af2e5a60465a92b093fe2eca2ea40ac8cf3a9f1bca01a5"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  depends_on macos: :monterey

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
