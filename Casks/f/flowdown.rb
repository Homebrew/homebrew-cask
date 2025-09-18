cask "flowdown" do
  version "3.2.396"
  sha256 "3962d2a95c28db0b6e8de20612277a9f7953ac1d926af4307bbe34a9da01ad03"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown-V#{version}.zip",
      verified: "github.com/Lakr233/FlowDown/"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
