cask "flowdown" do
  version "4.4.1"
  sha256 "580d829d85e1458fa7e91d85bfb8530b465b7b22580f7aff082e6c2ff170946d"

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
