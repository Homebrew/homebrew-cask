cask "flowdown" do
  version "4.0.9"
  sha256 "f9e3a8055c2c41c4f757a0d4528cfde74e0ec80bdf6eea160069191790779f45"

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
