cask "polypane" do
  arch arm: "-arm64"

  version "14.0.0"
  sha256 arm:   "4a473237d96065dec59b6560c54a0baeec52f347961b4d7c0b3371a50bb4a402",
         intel: "159b737edbf3f9a593964dd2cb9e7d302c768c912b9b5796ec8a7a0ceb5a48ac"

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
