cask "flowdown" do
  version "3.10.6"
  sha256 "aa5878964c561ed1b191b4f097b6e739073d9abd06590712546c5b047c664da2"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown.app.zip",
      verified: "github.com/Lakr233/FlowDown/"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  # Upstream sometimes creates GitHub releases for versions that are unstable
  # without marking them as "pre-release", so it's necessary to check multiple
  # releases to find the newest stable version until this is resolved.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: ">= :sonoma"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
