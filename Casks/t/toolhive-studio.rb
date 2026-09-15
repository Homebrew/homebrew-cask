cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.40.0"
  sha256 arm:   "bb91250bce9f94dc48fed6cf32c96646ae5fc4e1078d5ec8b657fd36d7eef387",
         intel: "c501c239fd4e6a31e04c9d17fb86b130c24747a0bd129dac751609bf46d929e6"

  url "https://github.com/stacklok/toolhive-studio/releases/download/v#{version}/ToolHive-#{arch}.dmg"
  name "ToolHive"
  desc "Desktop application to install, manage, and run MCP servers"
  homepage "https://github.com/stacklok/toolhive-studio"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "ToolHive.app"

  uninstall quit: "com.electron.toolhive"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.toolhive.sfl*",
    "~/Library/Application Support/ToolHive",
    "~/Library/Caches/com.electron.toolhive*",
    "~/Library/HTTPStorages/com.electron.toolhive",
    "~/Library/Logs/ToolHive",
    "~/Library/Preferences/com.electron.toolhive.plist",
  ]
end
