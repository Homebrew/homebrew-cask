cask "polypane" do
  arch arm: "-arm64"

  version "30.0.0"
  sha256 arm:   "f483776ed1a58b0c186f597f99c8799fb9572ee75bc6acf778ed218e04f5edf7",
         intel: "1fccb5c8e921810fdb5c8093e83dbb06742b275da0a8a7e374082d77d7347459"

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
