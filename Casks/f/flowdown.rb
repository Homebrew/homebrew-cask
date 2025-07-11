cask "flowdown" do
  version "2.5.351"
  sha256 "bf9f3f9d6bfd77bc23a33ddd7b932061cb0a8e85600f21f0deacf41588ac553f"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version}/FlowDown.zip",
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
