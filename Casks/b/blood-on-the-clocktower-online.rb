cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.47.2"
  sha256 arm:   "12300314becf8a0d5fd6305f24fb20bd254955b59757bcd2c2e2026dd4630c87",
         intel: "7df01e9a5c68906212acc0216edc1c7a9e072004efdeff8302365c202bf7b211"

  url "https://github.com/ThePandemoniumInstitute/botc-release/releases/download/v#{version}/Blood.on.the.Clocktower.Online_#{version}_#{arch}_darwin.dmg",
      verified: "github.com/ThePandemoniumInstitute/botc-release/"
  name "Blood on the Clocktower Online"
  desc "Client for the game Blood on the Clocktower"
  homepage "https://bloodontheclocktower.com/"

  app "Blood on the Clocktower Online.app"

  zap trash: [
    "~/Library/Application Support/botc-app",
    "~/Library/Application Support/com.thepandemoniuminstitute.botc.app",
    "~/Library/Caches/com.thepandemoniuminstitute.botc.app",
    "~/Library/Saved Application State/com.thepandemoniuminstitute.botc.app.savedState",
    "~/Library/WebKit/com.thepandemoniuminstitute.botc.app",
  ]
end
