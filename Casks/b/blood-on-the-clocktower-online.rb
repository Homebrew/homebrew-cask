cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.58.2"
  sha256 arm:   "c15004c3bbcae7bdd377cade671e4e38b7a6cee1a94e01e638d544e4baa1f74e",
         intel: "889785642c79c8e907aff20182bb6983ae085a031a1406a40779a4aa33bca18c"

  url "https://github.com/ThePandemoniumInstitute/botc-release/releases/download/v#{version}/Blood.on.the.Clocktower.Online_#{version}_#{arch}.dmg"
  name "Blood on the Clocktower Online"
  desc "Client for the game Blood on the Clocktower"
  homepage "https://bloodontheclocktower.com/"

  depends_on :macos

  app "Blood on the Clocktower Online.app"

  zap trash: [
    "~/Library/Application Support/botc-app",
    "~/Library/Application Support/com.thepandemoniuminstitute.botc-app",
    "~/Library/Application Support/com.thepandemoniuminstitute.botc.app",
    "~/Library/Caches/com.thepandemoniuminstitute.botc-app",
    "~/Library/Caches/com.thepandemoniuminstitute.botc.app",
    "~/Library/HTTPStorages/com.thepandemoniuminstitute.botc-app.binarycookies",
    "~/Library/Saved Application State/com.thepandemoniuminstitute.botc.app.savedState",
    "~/Library/WebKit/com.thepandemoniuminstitute.botc-app",
    "~/Library/WebKit/com.thepandemoniuminstitute.botc.app",
  ]
end
