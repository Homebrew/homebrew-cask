cask "flowdown" do
  version "3.5.406"
  sha256 "476dbb8422bab767d4244a8239b15c9ea61e457b62a51a7f5fbb2deb5885fa35"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown-V#{version}.zip",
      verified: "github.com/Lakr233/FlowDown/"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
