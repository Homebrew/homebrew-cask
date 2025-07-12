cask "flowdown" do
  version "2.6.355"
  sha256 "b08a62bb06379826e72f778831fcf888a06b021e5ae046f1443b09ea5f6d6b58"

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
