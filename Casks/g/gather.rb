cask "gather" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "7a96bf59b9a6d1e939987e49ff754076b0232b48dc12b8376bd5338ce2c8adb5",
         intel: "70cce1bfd518861ba0d8508867e07116f0fca25234dd4ef1519810ab0f25df10"

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
