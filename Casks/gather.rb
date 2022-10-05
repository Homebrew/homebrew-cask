cask "gather" do
  arch arm: "-arm64"

  version "0.3.14"
  sha256 arm:   "e5ef249e654826d6c3730ce9e6ca5374f08a35f73e540e2969918f523d6a3b85",
         intel: "9ab9737856847356f3bd030106e02d520cea0a7d904f84546b8f63c71483d808"

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
