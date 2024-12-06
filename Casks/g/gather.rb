cask "gather" do
  arch arm: "-arm64"

  version "1.22.1"
  sha256 arm:   "dbed641354d495dd898ec2af99e68d4be38078a208127435b7aa5886e3efe830",
         intel: "3ec3ec47b54844bb5b63963268e42dcafde25a7a7d635e661344c8e5f3b7264e"

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
