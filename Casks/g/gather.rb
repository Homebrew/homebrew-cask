cask "gather" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "04f0e97ce76008bceef45285ed741ef398c151a8fb864106f1fd741f6e60e94a",
         intel: "c71f445b888b92e1ec28ec44435ac99e36be39857d0b7f2e1724f1fd808b7b1a"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
