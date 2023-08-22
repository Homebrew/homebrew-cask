cask "gather" do
  arch arm: "-arm64"

  version "0.13.0"
  sha256 arm:   "0efa92e887a511b2a53bc4be7b2e746ae66acbd27553d93b97865df5102ccb94",
         intel: "66d8d36910511210e3e3e51a73e9fe7d2eed4254c7d0ca5390b2f4924b840f5b"

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
