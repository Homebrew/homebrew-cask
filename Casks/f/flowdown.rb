cask "flowdown" do
  version "1.24.241"
  sha256 "178d59d5f30d421e5d823a264f3ef1bce0175258b29627e9a3e5a79e7a8c5427"

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
