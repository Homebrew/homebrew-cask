cask "gather" do
  arch arm: "-arm64"

  version "1.35.0"
  sha256 arm:   "a7485cd2ddcea4ed5c19f6d4729fc32b343c1a209a5fcde41ce735fdc5e601b6",
         intel: "152a969693d333898c5fd59c69eb297d8243035fd933420ba3e203171b594c0f"

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
