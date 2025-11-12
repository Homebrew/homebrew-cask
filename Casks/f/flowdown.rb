cask "flowdown" do
  version "4.0.3"
  sha256 "1f1eafd4d53c96e0c4fb8c8b9cd144c5591f5e410cd0c582c8b7acede83ebed8"

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
