cask "flowdown" do
  version "4.0.12"
  sha256 "71f3603a4587bbb62877772bfbefb3c669610ac11457486decad9c3e02283a5c"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown.zip",
      verified: "github.com/Lakr233/FlowDown/"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-](?:patch|rev)[._-]\d+)?)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
