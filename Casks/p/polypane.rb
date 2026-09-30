cask "polypane" do
  arch arm: "-arm64"

  version "31.0.0"
  sha256 arm:   "8809ea07fb71d966f5066ea3b42e60b594659cf9a74923fa824de2597e63180f",
         intel: "9e4fbb353d042fe7cb650a1f28bed82d00b4b8e19f60c533f241553b571b93ee"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  depends_on macos: :ventura

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
