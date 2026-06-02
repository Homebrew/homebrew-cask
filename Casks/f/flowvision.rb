cask "flowvision" do
  version "1.7.3"
  sha256 "a23513b00d75c400e3a8711a1d53d594d5aba251cc5ae5125f0ceefc3d34c4f8"

  url "https://github.com/netdcy/FlowVision/releases/download/#{version}/FlowVision.#{version}.zip",
      verified: "github.com/netdcy/FlowVision/"
  name "FlowVision"
  desc "Waterfall-style image viewer"
  homepage "https://flowvision.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "FlowVision.app"

  zap trash: [
    "~/Library/Application Support/FlowVision",
    "~/Library/Preferences/netdcy.FlowVision.plist",
    "~/Library/Saved Application State/netdcy.FlowVision.savedState",
  ]
end
