cask "polypane" do
  arch arm: "-arm64"

  version "28.0.1"
  sha256 arm:   "259b1995a78e66fe459269768cdf549a4efb02c63304f72d06fd8b74a962f0f8",
         intel: "8d7f42d759c0930187430f17c50f09b9dde5f52896db4d72607b9ac7943d21bd"

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
