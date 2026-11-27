cask "flowdown" do
  version "5.2.18"
  sha256 "3aa33b2ea266abfe1398ed44322107bd9b9871083af4fb2152367c3ce1791ff2"

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
    "~/Library/Application Scripts/wiki.qaq.flow",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/wiki.qaq.flow.sfl*",
    "~/Library/Containers/wiki.qaq.flow",
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
