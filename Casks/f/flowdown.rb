cask "flowdown" do
  version "5.2.2"
  sha256 "64a281ecbfbbd71e4bff0f729fff4962a3e621e0a7408f733817f1e56d80f603"

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
