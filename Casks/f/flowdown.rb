cask "flowdown" do
  version "3.4.405"
  sha256 "67e7e28e27d0f43abeb62334feafbe93a701d553d9c96f916c8fe04607f695b2"

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
