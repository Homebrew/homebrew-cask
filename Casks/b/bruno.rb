cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.32.1"
  sha256 arm:   "bd9460685d443289dee59bbe74635fa212df9b57819e3144c5bb22bcaa03b6aa",
         intel: "b2af4fbc04093ab48bb9ab300fd21d54ad122e6a41a52ed4d1a8b316ba12800d"

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
