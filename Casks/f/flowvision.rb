cask "flowvision" do
  version "1.7.6"
  sha256 "be9d3f34592ee279ccb59d8b25c637ed1665c7c59699a197c3bc93bb8cd981b9"

  url "https://github.com/netdcy/FlowVision/releases/download/#{version}/FlowVision.#{version}.zip"
  name "FlowVision"
  desc "Waterfall-style image viewer"
  homepage "https://flowvision.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "FlowVision.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/netdcy.flowvision.sfl*",
    "~/Library/Application Support/FlowVision",
    "~/Library/Preferences/netdcy.FlowVision.plist",
    "~/Library/Saved Application State/netdcy.FlowVision.savedState",
  ]
end
