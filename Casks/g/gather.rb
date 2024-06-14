cask "gather" do
  arch arm: "-arm64"

  version "1.10.0"
  sha256 arm:   "eb80703accd6b5e9452850c5d239d7a436ab46e079b449e0d81232c808ee9267",
         intel: "3956b1f4dff8d015b5dd166da1e342482ce6a118403e62ba4913154c04e9e2f0"

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
