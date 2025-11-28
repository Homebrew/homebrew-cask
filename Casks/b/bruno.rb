cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.15.0"
  sha256 arm:   "72429cd6d6a35bb5b08ef640b3ab87945f1c2c05136f8b3ad8ade4f92a03806e",
         intel: "ae58bce5c31d40d82548e4dc3a6e93c8497c63dae9de166ca7fb7e9d30739a34"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
