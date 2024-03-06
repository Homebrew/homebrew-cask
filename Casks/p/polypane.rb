cask "polypane" do
  arch arm: "-arm64"

  version "18.0.3"
  sha256 arm:   "99c54e1200c4ce8715390e309927cda55b8b3e7c9853f742664dfea88dbf6a01",
         intel: "4f5988adf942e2a8086a8e297859df2ecde32ccd1be7491ffe4f3ccd402ed95c"

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
