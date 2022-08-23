cask "polypane" do
  arch arm: "-arm64"

  version "10.0.1"
  sha256 arm:   "bf3933c7461d952e19fab0e444712c24567abc64680092bff108993c15a8a205",
         intel: "303929e6821f4d5c124c10c257104c5fd90fd4a6cbd13c68a288dee4dcc1fd00"

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
