cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.41.0"
  sha256 arm:   "b349d8a537c534ecb377903eacb70a12df84508f6105a109b9a7779256543ccc",
         intel: "6b0176b56daa4bc06d18b954f3c9636f2e95e27215f8c23c224e00aeaf79abc7"

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
