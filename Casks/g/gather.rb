cask "gather" do
  arch arm: "-arm64"

  version "0.13.6"
  sha256 arm:   "bdc1ad48e973e2035b4ef34c4b7a0db1af72596583fce8f35914faa76f481cdb",
         intel: "1a2c3a92c60b5dc78f9598732a70f1bc52c66276ba304676f02ff101b024f9d2"

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
