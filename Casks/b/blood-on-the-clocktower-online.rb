cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.58.1"
  sha256 arm:   "76c46c71d239bb83678ae3dce8ed75d33badf06fabc0d4f3be55c3c673faeee5",
         intel: "1d9b9e928d9563a73fc4d07506dcae0d4a39608da74cf18069be3c40537917c3"

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
