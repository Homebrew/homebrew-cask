cask "polypane" do
  arch arm: "-arm64"

  version "17.0.0"
  sha256 arm:   "07b68dc9202d437c0747c79bfbf51c023426c6de4cd4e0aacd80b9ad96ebd921",
         intel: "07415347c2b55ce1f2ee7415598f39891bdc39899aca68f5f967e89f5e19f245"

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
