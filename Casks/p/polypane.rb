cask "polypane" do
  arch arm: "-arm64"

  version "18.0.4"
  sha256 arm:   "398fdb7ba1592c5ef880e3d8b8af8b8358b0961b7047127935e31d23e7bd7e22",
         intel: "64739ad6a3488c3e0600cd82e8419b33cd7df5dd51412a545e3c45e8bbb69f17"

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
