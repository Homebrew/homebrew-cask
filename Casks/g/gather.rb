cask "gather" do
  arch arm: "-arm64"

  version "1.15.1"
  sha256 arm:   "c372112373e6a7a1db2f211f8f2de8d6d8e16b4b4e01d81611319bd8040cb9e8",
         intel: "9fa8f93359617abec08ff92c91409ac253077aee0f6c31e523a5dd334ed3c42b"

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
