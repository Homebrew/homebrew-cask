cask "gather" do
  arch arm: "-arm64"

  version "1.33.2"
  sha256 arm:   "e6ddb8ab468b12426723458a4ec887b926b51523aa4fa4488cd23771437627aa",
         intel: "cfd3c383baf6d598225341b5bb0335e89f56e69fd479893af9c2cfb08a597956"

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
