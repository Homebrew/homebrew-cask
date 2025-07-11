cask "flowdown" do
  version "2.4.349"
  sha256 "1a2926d1a533b233248598acd19aebf449db4409ab4c40a99052514383e0a3db"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown-v#{version}.zip",
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
