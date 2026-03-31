cask "blood-on-the-clocktower-online" do
  arch arm: "aarch64", intel: "x64"

  version "3.53.3"
  sha256 arm:   "9d55f5120cdc2318176e1aad7a433f5f6e3281c32782dd610b89cb19983e0bd5",
         intel: "aee11a019a75e9ca7649785710aeb234a4d011a90bcd36b99e9e2d5edf97e006"

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
