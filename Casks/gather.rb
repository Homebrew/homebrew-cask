cask "gather" do
  arch arm: "-arm64"

  version "0.3.20"
  sha256 arm:   "f2d75caecc36f5f2af5bc929c119bcaa2dd0f1ed370302a852f52e9f762e296c",
         intel: "1c71acc5f0e5297c5736c60b0f2433c1000a12bec2a74295739b05f58a0fbd95"

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
