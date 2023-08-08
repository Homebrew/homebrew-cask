cask "gather" do
  arch arm: "-arm64"

  version "0.11.1"
  sha256 arm:   "e47c331918f335574a3b550fb6fdb934bded2343c6f8f7027bbc075ec67c8291",
         intel: "5a4a0f68146463199e9d40889b1c4a905800da028fbeea39a9e9d512d5d9597c"

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
