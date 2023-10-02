cask "gather" do
  arch arm: "-arm64"

  version "0.14.0"
  sha256 arm:   "cbe937fa153277d1f9b2048b6467adf3cdf3031c978b8eed1bb222cb2107c964",
         intel: "4d5c0c5fcd368183ee9308c84d44f638c7010a0001689db696fe28661e56ed59"

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
