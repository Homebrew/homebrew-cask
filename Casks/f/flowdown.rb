cask "flowdown" do
  version "4.0.5"
  sha256 "6cb9cba15deb8e27ead1b5dd0a4411926d1b72a7c8725b5372172cd18cf9c1fc"

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
