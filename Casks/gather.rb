cask "gather" do
  arch arm: "-arm64"

  version "0.5.23"
  sha256 arm:   "09efe8a12ad0281198f58f63a509f21d5e1f1212b9aef179b416dcb3fef94b99",
         intel: "3df8424d156ee4334bf6cb8750a6e99a853511f307ecd0f2e10a965731046f36"

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
