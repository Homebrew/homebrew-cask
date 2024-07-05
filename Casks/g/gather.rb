cask "gather" do
  arch arm: "-arm64"

  version "1.10.1"
  sha256 arm:   "75f1a28c7e035eda0d93f39fc291de150e99f79a3bed86b59bfe7b0bc1e18d66",
         intel: "ca763c9fc25dc35e9bc4bf69013c3893bbc419a893c686924734e4c06bfd57ca"

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
