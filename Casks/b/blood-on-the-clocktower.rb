cask "blood-on-the-clocktower" do
  arch arm: "aarch64", intel: "x64"

  version "3.31.0"
  sha256 arm:   "cae25b9e2f7f858decfd1108f358c46b6d6a3b6a08d78f0fc776896b050e28f0",
         intel: "019da8bf6a4be77f89acd92df3621837ab5c95fc91428d1dac5ceed904d8f769"

  url "https://github.com/ThePandemoniumInstitute/botc-release/releases/download/v#{version}/Blood.on.the.Clocktower.Online_#{version}_#{arch}.dmg",
      verified: "github.com/ThePandemoniumInstitute/botc-release/"
  name "Blood on the Clocktower Online"
  desc "Client for the popular social deduction game Blood on the Clocktower"
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
