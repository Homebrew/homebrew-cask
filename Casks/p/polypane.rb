cask "polypane" do
  arch arm: "-arm64"

  version "18.0.2"
  sha256 arm:   "49e53239b485a74de1525013c7911284395faa5b48bb482bba841fec740ff961",
         intel: "6d3a22efad742e97b231b35c581e14892d2ebf561e3ca6437c1d2b9d15a435d4"

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
