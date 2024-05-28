cask "polypane" do
  arch arm: "-arm64"

  version "19.0.2"
  sha256 arm:   "af0c3a0ff73f782f15bea2002924ab603d697db682c8fb5725db1674abcf937d",
         intel: "785f5d81a81fa7e695c9fb5317ce435e339e9855ace47de57c91897b6314b5cc"

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
