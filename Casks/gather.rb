cask "gather" do
  arch arm: "-arm64"

  version "0.5.22"
  sha256 arm:   "b4eb1fc89d9fc43a945a277fbd0b38ad0a0be6561e0dd3de5b3b9ba97d181eb8",
         intel: "ac96a59dfc93f9ca460e62e8e1be62060e5bdd6c655ddeb590a6255483e40a2f"

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
