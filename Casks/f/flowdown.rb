cask "flowdown" do
  version "5.2.4"
  sha256 "c1f1873d21239afa504ba8396075dbc3e34c1ffa89e1c6677ebb0232a9df3500"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown-#{version}.zip"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-](?:patch|rev)[._-]\d+)?)$/i)
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FlowDown.app"

  uninstall quit: "wiki.qaq.flow"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
