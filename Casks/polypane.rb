cask "polypane" do
  arch arm: "-arm64"

  version "12.0.1"
  sha256 arm:   "20b23b948d0bf8006b6c20edd2cadc3669b5966dec95c06316099331e4fedfbb",
         intel: "07e7b3a912b1e22666f8fd5a31fc86bf299ab607b18974d8e80922ce87968f92"

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
