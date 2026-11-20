cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.41.0"
  sha256 arm:   "847949de338e887491aaadd8ca6b455a2ce09d3f22d86d842570219a7c6ba217",
         intel: "2f7364ea16d5cb1f9986a5773a82f6a4e0bca40b0e64035714929ac4e4b52767"

  url "https://github.com/stacklok/toolhive-studio/releases/download/v#{version}/ToolHive-#{arch}.dmg"
  name "ToolHive"
  desc "Desktop application to install, manage, and run MCP servers"
  homepage "https://github.com/stacklok/toolhive-studio"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

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
