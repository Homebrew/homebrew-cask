cask "gather" do
  arch arm: "-arm64"

  version "0.4.0"
  sha256 arm:   "f81ef3b2e26a0c973cbf0830117f68473b85bf4e657da903ada8c1a51de21407",
         intel: "a1e2654e56d195b37068feed641c728599223b8b313c60f12d03eb2917feee14"

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
