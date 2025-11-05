cask "gather" do
  arch arm: "-arm64"

  version "1.35.1"
  sha256 arm:   "750b97a7840fb7ee8d23d931e3e1794050e62115d30e816968d02b0f4e962ef0",
         intel: "476b85215f6a9712c994219d076c46a127ae06a08cc33a8ada325de5f892491e"

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
