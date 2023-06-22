cask "gather" do
  arch arm: "-arm64"

  version "0.8.12"
  sha256 arm:   "2afa8435b09329feaff298473dddd8d8c446f44b4ea6b99a3db964b6cfd881c0",
         intel: "1cb74569972aa86d564c188c5e336aeae86d31e19ed96b9649a331d50c98eece"

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
