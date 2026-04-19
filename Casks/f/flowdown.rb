cask "flowdown" do
  version "4.8.6"
  sha256 "20c429972eec12a5a2e9aebe82c2f27e0567e603e8e43b65a90b4ef7270f35d6"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown-#{version}.zip",
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
