cask "gather" do
  arch arm: "-arm64"

  version "1.37.1"
  sha256 arm:   "50ba0fb5fc81ac1ff5b15d383f253a7693cf32d9dc96ffd5896e78e2666e9ee0",
         intel: "5e92b55146905500e2b4b4294b333f47c6d8b23ffb2ea0a453c345ce7d6fdaaa"

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
