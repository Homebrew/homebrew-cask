cask "gather" do
  arch arm: "-arm64"

  version "0.3.10"
  sha256 arm:   "1a060211c3f524dd6efe90854e072d9273d17fe1af1ff9d432852d4032579835",
         intel: "37be5407a21d93796325f25637d3d572fe5458c12bebcd4a02a0e86fadec628f"

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
