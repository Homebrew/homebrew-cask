cask "gather" do
  arch arm: "-arm64"

  version "0.14.5"
  sha256 arm:   "46ed4b676b5fd732970092deaa0f436f18a253ab32e35c3631f37bbe7e7c3af4",
         intel: "23064bbb66dc316eaa953481cc51cafb0178e224fd92a02da2231a4fad823553"

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
