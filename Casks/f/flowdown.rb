cask "flowdown" do
  version "2.7.361"
  sha256 "48e4aa5b0e80d612003607567e1c064a362e3ab1c0d5ceb536fb89058b577939"

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
