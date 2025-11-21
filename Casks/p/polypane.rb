cask "polypane" do
  arch arm: "-arm64"

  version "27.0.1"
  sha256 arm:   "9e3f3e79d7eea5164dee7e4b378cd3820b93656c2e34289bbc0749369955a042",
         intel: "f927817653ffca32ad2a902107778fe9fef183dbdf40bbc8e3f00a9de987c05f"

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
