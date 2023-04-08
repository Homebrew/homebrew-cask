cask "gather" do
  arch arm: "-arm64"

  version "0.5.25"
  sha256 arm:   "379ccac2ace5a87b62fd9e986d1b870956fd4ef1f64506cd89cfa7a0b3d45f9f",
         intel: "9221fb1b9267bff3912f3809455a309391dfc712b1082ee3a0f02d136502a785"

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
