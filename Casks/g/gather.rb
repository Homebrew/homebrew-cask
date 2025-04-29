cask "gather" do
  arch arm: "-arm64"

  version "1.31.0"
  sha256 arm:   "6e192c3d571ca0f23b1b3d8a99a8d0ec97e8befe97101928b65577f5e1b83c31",
         intel: "05cc2714e045b85089bf2b506297366a3cb99594707bd705f7cb1b694b1b607f"

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
