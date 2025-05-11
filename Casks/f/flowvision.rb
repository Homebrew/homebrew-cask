cask "flowvision" do
  version "1.6.3"
  sha256 "27ccb4531a7e5afe7fa7ced87422096986dd859bd7db88f7776a64f0f85802b2"

  url "https://github.com/netdcy/FlowVision/releases/download/#{version}/FlowVision.#{version}.zip",
      verified: "github.com/netdcy/FlowVision/"
  name "FlowVision"
  desc "Waterfall-style image viewer"
  homepage "https://flowvision.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FlowVision.app"

  zap trash: [
    "~/Library/Application Support/FlowVision",
    "~/Library/Preferences/netdcy.FlowVision.plist",
    "~/Library/Saved Application State/netdcy.FlowVision.savedState",
  ]
end
