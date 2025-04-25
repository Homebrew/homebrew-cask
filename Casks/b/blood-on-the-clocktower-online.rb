cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.40.3"
  sha256 arm:   "f9b9880459cac2a2a38d032fcf32b60407cdfe3080b5dce22151f15bc5bf503c",
         intel: "ced478e901a9193781c565f525581a220f0beb010fcc30a0d1081d6dde54e1e6"

  url "https://github.com/ThePandemoniumInstitute/botc-release/releases/download/v#{version}/Blood.on.the.Clocktower.Online_#{version}_#{arch}.dmg",
      verified: "github.com/ThePandemoniumInstitute/botc-release/"
  name "Blood on the Clocktower Online"
  desc "Client for the game Blood on the Clocktower"
  homepage "https://bloodontheclocktower.com/"

  depends_on macos: ">= :high_sierra"

  app "Blood on the Clocktower Online.app"

  zap trash: [
    "~/Library/Application Support/botc-app",
    "~/Library/Application Support/com.thepandemoniuminstitute.botc.app",
    "~/Library/Caches/com.thepandemoniuminstitute.botc.app",
    "~/Library/Saved Application State/com.thepandemoniuminstitute.botc.app.savedState",
    "~/Library/WebKit/com.thepandemoniuminstitute.botc.app",
  ]
end
