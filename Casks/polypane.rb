cask "polypane" do
  arch arm: "-arm64"

  version "13.1.2"
  sha256 arm:   "fa7078358eba4ef8997af540a8e9388584f701a4a08c8942c078c7fc37c35935",
         intel: "a5fbb5080aeaf7a0e09d7810347c95756a12f9be2fada09d93494ad9807488e5"

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
