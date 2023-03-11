cask "gather" do
  arch arm: "-arm64"

  version "0.5.13"
  sha256 arm:   "b4e9e8a5435852e962f1af8979542691874c7ba316ccbc4a9242ec0fbf3f6dea",
         intel: "4e122de4954a9f31fd94b9b0dc130082124ec90eea37d88b34825adbeaec6f1b"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
