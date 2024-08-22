cask "polypane" do
  arch arm: "-arm64"

  version "21.0.0"
  sha256 arm:   "860c53d5d0eb6aac2aff5261297b355efe51fed9df4bc1216a893236c7694250",
         intel: "123370dad7f2ceea3dbb975be0ce8914f0eea2a35deb156bc2217e62b2c0e94e"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

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
