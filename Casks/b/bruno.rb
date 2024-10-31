cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.34.1"
  sha256 arm:   "9c33a2bdd8ca2c95edd2352c85f7baa113053ed333d427b862a18088839cb497",
         intel: "217b2c794222ca82a653664e199f812925d64bee50f92ee786e9397a9e5611c7"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
