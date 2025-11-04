cask "flowdown" do
  version "3.10.10"
  sha256 "40f0838a6d17da8725b112e262a4194ce64eba03331ad120305a534b59795bc5"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown.app.zip",
      verified: "github.com/Lakr233/FlowDown/"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
