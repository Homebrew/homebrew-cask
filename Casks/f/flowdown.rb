cask "flowdown" do
  version "4.0.10"
  sha256 "bb0ce191a63bfc29126327c8d3bc398a49163e32183a8b98244c928ab073c90d"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown.app.zip",
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
