cask "gather" do
  arch arm: "-arm64"

  version "1.0.1"
  sha256 arm:   "123b9acbc616e569afaf6558230bf449cb46d78b832e26c6c935b0fe294fa33e",
         intel: "c608623a4fad4f29267607e8da242104704645d90e82b7d161fed0db9efdf5d7"

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
