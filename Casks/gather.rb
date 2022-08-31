cask "gather" do
  arch arm: "-arm64"

  version "0.3.7"
  sha256 arm:   "dd8c42d42ca0aa5c5295a616e3a5556b3749b3051c483a4946a6f625d6f4386d",
         intel: "10db8ccc178e3fc55f2d6a2d5a9473e7ae672d858868fb40cacf92b2129c332c"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
