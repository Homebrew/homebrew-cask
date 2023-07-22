cask "gather" do
  arch arm: "-arm64"

  version "0.9.2"
  sha256 arm:   "1471f401aece1a0dcf8e8c4229024b239c4b640016901493e5a4dbcf2e2a852b",
         intel: "dab990fcd533b7262409461e99eafadd392dd08a1d6ab8cd8c373b023d809d17"

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
