cask "flowvision" do
  version "1.7.4"
  sha256 "f9ae7ae6043f798ac773fe8832c5c3cc31dfbdb9a1e963417d8e5eb24454136e"

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
