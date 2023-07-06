cask "gather" do
  arch arm: "-arm64"

  version "0.8.16"
  sha256 arm:   "5c8dce2ec192ea49dd8965a28f397fead12d4a0d314eb07b0e63df4954409fc1",
         intel: "29968a56b51c7824f26ffb50e323c1ade83f4088ddaa178755dda6c049b495c4"

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
