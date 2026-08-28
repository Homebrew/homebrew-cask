cask "polypane" do
  arch arm: "-arm64"

  version "30.1.0"
  sha256 arm:   "f7e551ce47ab13cc99c01d2c34f53f49e26961c08070140cd293508fc5a68b99",
         intel: "caac1bd7ee6f6b22833aed30b380920726c734b227b9214046f52176b16f6aa6"

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
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
