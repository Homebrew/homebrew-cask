cask "greenery" do
  version "0.9.8"
  sha256 "0f4cb017cd5398b2b993b9a6cd222ac385086d76b109f2dcf0e0fd27f5bce231"

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
