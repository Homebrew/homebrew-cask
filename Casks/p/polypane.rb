cask "polypane" do
  arch arm: "-arm64"

  version "27.0.0"
  sha256 arm:   "a4bc9158c02b59caac408ada904b153edd457cd0904e4a6f1f9f9e68ec9bdf61",
         intel: "b20a0d37f95fa4d8bcc3f1e2ba70cf4a59bfc9a4bb83f835dc1c40e052f6673c"

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
