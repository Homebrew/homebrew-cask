cask "gather" do
  arch arm: "-arm64"

  version "0.8.8"
  sha256 arm:   "407d74bc6c77766d3610c5a22e64f74a88fb25ce47eeececffcf981673caf25b",
         intel: "9caa7985adbd0f91a29f686098a11d6c1e4482e5fc470b064a4ae8a7b333bd05"

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
