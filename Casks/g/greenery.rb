cask "greenery" do
  version "0.9.4"
  sha256 "13ae6e2a240f977c818f85a7a047c6e3d995a0407bc811affe0c4a6d9e9e3cc9"

  url "https://github.com/GreenfireInc/Releases.Greenery/releases/download/v#{version}/Greenery.#{version}.zip",
      verified: "github.com/GreenfireInc/Releases.Greenery/"
  name "Greenery"
  desc "Cryptocurrency bookkeeping and accounting wallet"
  homepage "https://www.greenery.finance/"

  depends_on macos: ">= :high_sierra"

  app "Greenery.app"

  zap trash: [
    "~/Library/Application Support/Greenery",
    "~/Library/Preferences/com.greenery.app.plist",
    "~/Library/Saved Application State/com.greenery.app.savedState",
  ]
end
