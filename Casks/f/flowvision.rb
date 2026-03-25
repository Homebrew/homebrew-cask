cask "flowvision" do
  version "1.7.0"
  sha256 "44339051a8fd4740a6abde8f4c9f29a41e1fd0aa843c8ecfca9345eb2f3892c9"

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
