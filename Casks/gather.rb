cask "gather" do
  arch arm: "-arm64"

  version "0.3.12"
  sha256 arm:   "c98fddf50f4cf424eff6e83eab443300c3d1aff45270d21269664c55082ca6f4",
         intel: "a4a6644d1077f434c4f069a4afb1e74dbcffbee193e8546eb8908cfffe8c761e"

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
