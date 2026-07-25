cask "flowvision" do
  version "1.7.5"
  sha256 "10193c20095679c5ec83b24e47429cdf654bba848ff8220f6214e12ae4c445a9"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/netdcy.flowvision.sfl*",
    "~/Library/Application Support/FlowVision",
    "~/Library/Preferences/netdcy.FlowVision.plist",
    "~/Library/Saved Application State/netdcy.FlowVision.savedState",
  ]
end
