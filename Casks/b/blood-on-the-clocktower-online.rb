cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.52.0"
  sha256 arm:   "4c85d83569f41c6f18b27e025b4849e2017a11c24526e70276c3f550bdf02934",
         intel: "b48b30d6ba84584e3978928a6b0a21ba238574187c80ed33b9c219d31b20d726"

  url "https://github.com/ThePandemoniumInstitute/botc-release/releases/download/v#{version}/Blood.on.the.Clocktower.Online_#{version}_#{arch}.dmg",
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
