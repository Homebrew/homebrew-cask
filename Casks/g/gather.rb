cask "gather" do
  arch arm: "-arm64"

  version "0.15.0"
  sha256 arm:   "db28fe36b7ceba08a4924efdf8858e0436d8af74eed14a92e583763540a7bb5a",
         intel: "1d8f5ae584c75848bb5e53d35701ea9d30c13a035f2864c2afea9d33e93f7c6f"

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
