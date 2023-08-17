cask "gather" do
  arch arm: "-arm64"

  version "0.12.2"
  sha256 arm:   "d8e5c1c8a6400a5e163311880d5ac5712213da0c2204539db989e0db26a0e417",
         intel: "a530d7adf7247ae532e3276a9c33ae314bc42dc0cd0ab063a6a8b4bc5dc3e86b"

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
