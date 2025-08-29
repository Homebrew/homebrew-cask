cask "gather" do
  arch arm: "-arm64"

  version "1.33.0"
  sha256 arm:   "2c65a452eb182ccae7baac1193a5b8aaf2911c7830fdd80decb4dcd2e08b833b",
         intel: "102c41bff97e6f1ddba37e332c78006f54d3b412aecbc52c9d91748fe5476d5b"

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
  depends_on macos: ">= :big_sur"

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
